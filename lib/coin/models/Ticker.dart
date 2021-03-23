import 'package:json_annotation/json_annotation.dart';

import 'Coin.dart';
import 'Market.dart';

part 'Ticker.g.dart';


@JsonSerializable()
class Ticker {
  Ticker(
    this.base,
    this.target,
    this.market,
    this.last,
    this.volume,
    this.convertedLast,
    this.convertedVolume,
    this.bidAskSpreadPercentage,
    this.timestamp,
    this.lastTradedAt,
    this.lastFetchAt,
    this.isAnomaly,
    this.isStale,
    this.tradeUrl,
    this.tokenInfoUrl,
    this.coinId,
  );

  Base base;
  String target;
  Market market;
  double last;
  double volume;
  Map<String, double> convertedLast;
  Map<String, double> convertedVolume;
  // TrustScore trustScore;
  double bidAskSpreadPercentage;
  DateTime timestamp;
  DateTime lastTradedAt;
  DateTime lastFetchAt;
  bool isAnomaly;
  bool isStale;
  String tradeUrl;
  dynamic tokenInfoUrl;
  Id coinId;
  // TargetCoinId targetCoinId;

  factory Ticker.fromJson(Map<String, dynamic> json) => _$TickerFromJson(json);

  Map<String, dynamic> toJson() => _$TickerToJson(this);
}
enum Base { BTC, ETH, XBT, WBTC, LTC, BNB, XRP, LINK }