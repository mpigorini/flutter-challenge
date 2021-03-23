import 'package:challenge/coin/api/CoinApiService.dart';
import 'package:challenge/coin/models/Coin.dart';
import 'package:challenge/coin/models/SimpleCoin.dart';
import 'package:challenge/config/state/index.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FetchTabWidget extends StatefulWidget {
  @override
  _FetchTabWidgetState createState() => _FetchTabWidgetState();
}

class _FetchTabWidgetState extends State<FetchTabWidget> {
  late List<SimpleCoin> _coins;
  late Provider state;
  TextEditingController _controller = TextEditingController();
  SimpleCoin _coin = SimpleCoin("","","");
  
  @override
  Widget build(BuildContext context) {
    _coins = Provider.of<MyState>(context).coins;
    return Container(
      child: Column (
        children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
                child: Text ("Search a coin to add to your tracker portfolio.",
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold), textAlign: TextAlign.center)
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TypeAheadField(
                        textFieldConfiguration: TextFieldConfiguration(
                          controller: _controller ,
                            style: DefaultTextStyle.of(context).style.copyWith(
                                fontStyle: FontStyle.italic
                            ),
                            decoration: InputDecoration(
                              hintText: "Please introduce a crypto Id",
                                border: OutlineInputBorder()
                            )
                        ),
                        suggestionsCallback: (pattern) async {
                          print ('lol');
                           return _coins.where(( SimpleCoin element) {
                            if (element.name.toLowerCase().contains(pattern.toLowerCase())) {
                              return true;
                            }else {
                              return false;
                            }
                          });
                        },
                        itemBuilder: (context, SimpleCoin suggestion) {
                          return ListTile(
                            leading: Icon(Icons.monetization_on),
                            title: Text(suggestion.name),
                            subtitle: Text('\$${suggestion.symbol}'),
                          );
                        },
                        onSuggestionSelected: (SimpleCoin suggestion) {
                          _controller.text = suggestion.name;
                          _coin = suggestion;
                        },
                      ),
                      Divider(color: Colors.transparent, height: 40,),
                      ElevatedButton(
                          onPressed: () {
                            _addCoin();
                          } ,
                          child: Text('Add')
                      )
                    ],
                  ),
                )
            )
        ],
      ),
    );
  }

  _addCoin() async {

    if (_controller.text.length > 0) {
      Response? response = await CoinApiService().getCoinById(_coin.id.length > 0 ? _coin.id : _controller.text);

      if (response?.statusCode == 200) {
        Coin newCoin = Coin.fromJson(response?.data);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        List<Coin> _storeCoins = <Coin>[];
        if (prefs.containsKey("trackedCoins")) {
          _storeCoins =  Coin.fromJSon(prefs.getString("trackedCoins"));
        }
        if (_storeCoins.lastIndexWhere((element) => element.id == newCoin.id) == -1) {
          _storeCoins.add(newCoin);
          _storeCoins.sort((a,b){
            return a.name.toLowerCase().compareTo(b.name.toLowerCase());
          });
        }

        prefs.setString("trackedCoins", Coin.convertToJson(_storeCoins));
        _clearField();
        Provider.of<MyState>(context,listen: false).updateCoins();
        final snackBar = SnackBar(
          backgroundColor: Colors.green,
          content: Text('Success: Coin was added to your portfolio.!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text('Error: ' + response!.data['error']),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }else {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: Text('Error: the crypto id is required'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }


  }

  _clearField (){
    _coin.id = "";
    _coin.symbol= "";
    _coin.name = "";
    _controller.text="";
  }
}
