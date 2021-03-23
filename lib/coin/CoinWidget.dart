import 'package:challenge/coin/widgets/tabs/FetchTabWidget.dart';
import 'package:challenge/coin/widgets/tabs/SeeIconTabWidget.dart';
import 'package:flutter/material.dart';

class CoinWidget extends StatefulWidget {
  @override
  _CoinWidgetState createState() => _CoinWidgetState();
}

class _CoinWidgetState extends State<CoinWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text("Coin Tracker"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Fetch Coin'),
              ),
              Tab(
                child: Text("Stored Coins"),
              )
            ],
          ),
        ),
        body: Container(
          child: TabBarView(
            children: [
              FetchTabWidget(),
              SeeIconTabWidget()
            ],
          ),
        ),
      )
    );
  }
}
