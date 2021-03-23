import 'package:challenge/coin/api/CoinApiService.dart';
import 'package:challenge/coin/models/Coin.dart';
import 'package:challenge/config/state/index.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SeeIconTabWidget extends StatefulWidget {
  @override
  _SeeIconTabWidgetState createState() => _SeeIconTabWidgetState();
}

class _SeeIconTabWidgetState extends State<SeeIconTabWidget> with AutomaticKeepAliveClientMixin<SeeIconTabWidget> {

  List<Coin> _storeCoins = <Coin>[];
  late List<bool> isRefreshing = <bool>[];
  late MyState state;
  String dropdownValue = 'usd';
  List<DropdownMenuItem<String>> _currencySelect = <DropdownMenuItem<String>>[];
  @override
  Widget build(BuildContext context) {
    state =  Provider.of<MyState>(context);
    return FutureBuilder(
      future: _loadCoinsFromShared()  ,
      builder: (BuildContext context, AsyncSnapshot snapshot ) {
        if (snapshot.hasData) {
          return Container(
              child: _storeCoins.length > 0 ?
                  Column(
                    children: [
                     Padding(
                       padding: EdgeInsets.all(14),
                       child: Row (
                         children: [
                           Text ("Select currency : ", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                           DropdownButton<String>(
                               value: dropdownValue,
                               onChanged: (String? newValue) {
                                 setState(() {
                                   dropdownValue = newValue!;
                                 });
                               },
                               items:_currencySelect
                           )
                         ],
                       ),
                     ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: _generatedListOfCoins(),
                        ),
                      )
                    ],
                  )
                  :
                  Container(
                    child: Center (
                      child: Text("You dont have stored coins, fetch one to start tracking."),
                    ),
                  )
          );
        }else {
          return Container (
            child:Center(
              child: CircularProgressIndicator(),
            ) ,
          );
        }
      },
    );
  }


  Future<bool>_loadCoinsFromShared() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("trackedCoins")) {
      _storeCoins =  Coin.fromJSon(prefs.getString("trackedCoins"));
      if (isRefreshing.length < _storeCoins.length) {
        isRefreshing = List.filled(_storeCoins.length, false);
      }
      if (_currencySelect.isEmpty) {
        for ( String x in _storeCoins[0].marketData!.currentPrice!.keys){
          _currencySelect.add(DropdownMenuItem<String>(value: x, child: Text(x.toUpperCase())));
        }
      }

    }
    return true;
  }

  List<Widget> _generatedListOfCoins(){
    List<Widget> list = <Widget>[];
    for (int i = 0 ; i < _storeCoins.length ; i++) {
      list.add(_listItem(_storeCoins[i], i));
    }
    return list;
  }

  Widget _listItem(Coin coin , int index) {
    return Card (
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(coin.image!.small),
            ),
            title: Text(coin.name),
            subtitle: Text(coin.symbol),
            trailing:   GestureDetector(
              onTap: (){
                _deleteCoin(coin);
              },
              child: Icon(Icons.close),
            ),
          ),
          Divider(color: Colors.transparent,),
          Text (coin.marketData!.currentPrice![dropdownValue].toString() + " ${dropdownValue.toUpperCase()}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Divider(color:Colors.transparent),
          ElevatedButton(
              onPressed: isRefreshing[index] ?   null :() {_refreshCoin(coin, index);},
              child: isRefreshing[index] ?
              SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(),
              ):
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text ('Refresh' ),
                  Container(width: 10,),
                  Icon(Icons.refresh, size: 18,)
                ],
              )
          )
        ],
      )
    );
  }

  _refreshCoin(Coin coin, int index) async {
    if (!isRefreshing[index]) {
      setState(() {
        isRefreshing[index] = true;
      });
      Response? response = await CoinApiService().getCoinById(coin.id);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (response!.statusCode == 200) {
        int index = _storeCoins.indexWhere((element) => element.id == coin.id);
        if (index != -1) {
          _storeCoins.removeAt(index);
        }
        _storeCoins.add(Coin.fromJson(response.data));
        _storeCoins.sort((a,b){
          return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        });
        prefs.setString("trackedCoins", Coin.convertToJson(_storeCoins));
      }
      setState(() {
          isRefreshing[index] =false;
      });
    }
  }

  _deleteCoin(coin) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int index = _storeCoins.indexWhere((element) => element.id == coin.id);
    if (index != -1) {
      _storeCoins.removeAt(index);
    }
    prefs.setString("trackedCoins", Coin.convertToJson(_storeCoins));
    setState(() {

    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
