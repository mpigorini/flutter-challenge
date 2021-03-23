

import 'package:challenge/config/ApiUrl.dart';
import 'package:dio/dio.dart';

class CoinApiService {
  var _http;
  CoinApiService() {
    BaseOptions options = new BaseOptions(
      baseUrl: ApiUrl.BASE_URL,
      receiveDataWhenStatusError: true,
    );
    this._http = new Dio(options);

  }



  Future<Response?> getListOfCoins() async {
    try {
      Response response = await this._http.get(ApiUrl.LIST_OF_COINS + "?include_platform=false");
      return response;
    }on DioError catch ( e) {
      print(e);
      return e.response;
    }
  }

  Future<Response?> getCoinById(String coinId) async {
    try {
      Response response = await this._http.get(ApiUrl.GET_COIN_BY_ID + coinId);
      return response;
    }on DioError catch ( e) {
      print(e);
      return e.response;
    }
  }

}
