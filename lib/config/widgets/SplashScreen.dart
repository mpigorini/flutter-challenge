import 'package:challenge/coin/CoinWidget.dart';
import 'package:challenge/coin/api/CoinApiService.dart';
import 'package:challenge/coin/models/ListOfCoinsResponse.dart';
import 'package:challenge/coin/models/SimpleCoin.dart';
import 'package:challenge/config/state/index.dart';
import 'package:challenge/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _loadInitData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center (
        child: Image(
          image: AssetImage("lib/assets/logoDefiant.png"),
        ),
      ),
    );
  }

  _loadInitData() async {
    Response? response =  await CoinApiService().getListOfCoins();

    if (response!.statusCode == 200) {
      List<SimpleCoin> coins = <SimpleCoin>[];
      response.data.forEach((x){
        coins.add(SimpleCoin.fromJson(x));
      });
      Provider.of<MyState>(context, listen:false).coins = coins;
      Navigator.push(context,
        MaterialPageRoute(
            builder: (BuildContext context) {
              return CoinWidget();
            }
        )
      );
    }
  }
}
