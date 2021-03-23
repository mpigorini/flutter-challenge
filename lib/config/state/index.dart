import 'package:challenge/coin/models/SimpleCoin.dart';
import 'package:flutter/foundation.dart';

class MyState extends ChangeNotifier {
  // Read https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple for more info

  // Define here the objects which state will be managed by the provider
  final List<SimpleCoin> _coins = <SimpleCoin>[];


  // Define the update functions
  List<SimpleCoin> get coins => _coins;

  set coins(List<SimpleCoin> coins) {
    _coins.addAll(coins);
    notifyListeners();
  }

  updateCoins() {

    notifyListeners();
  }
}
