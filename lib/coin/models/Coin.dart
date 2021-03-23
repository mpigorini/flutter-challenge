import 'dart:collection';
import 'dart:convert';

import 'package:challenge/coin/models/Image.dart';
import 'package:challenge/coin/models/LinksModel.dart';
import 'package:challenge/coin/models/MarketData.dart';
import 'package:challenge/coin/models/Tion.dart';
import 'package:json_annotation/json_annotation.dart';


import 'PublicInterestStats.dart';



part 'Coin.g.dart';

enum Id { BITCOIN, ETHEREUM, WRAPPED_BITCOIN, LITECOIN, BINANCECOIN, RIPPLE, CHAINLINK }
@JsonSerializable()
class Coin {
  Coin(
    this.id,
    this.symbol,
    this.name,
    this.assetPlatformId,
    this.blockTimeInMinutes,
    this.hashingAlgorithm,
    this.categories,
    this.publicNotice,
    this.additionalNotices,
    this.localization,
    this.description,
    this.links,
    this.image,
    this.countryOrigin,
    this.genesisDate,
    this.sentimentVotesUpPercentage,
    this.sentimentVotesDownPercentage,
    this.marketCapRank,
    this.coingeckoRank,
    this.coingeckoScore,
    this.developerScore,
    this.communityScore,
    this.liquidityScore,
    this.publicInterestScore,
    this.publicInterestStats,
    this.statusUpdates,
    this.lastUpdated,
  );

  String id;
  String symbol;
  String name;

  @JsonKey(name: 'asset_platform_id')
  dynamic? assetPlatformId;

  @JsonKey(name: 'block_time_in_minutes')
  int? blockTimeInMinutes;

  @JsonKey(name: 'hashing_algorithm')
  String? hashingAlgorithm;

  List<String>? categories;

  @JsonKey(name: 'public_notice')
  dynamic? publicNotice;

  @JsonKey(name: 'additional_notices')
  List<dynamic>? additionalNotices;

  Tion? localization;
  Tion? description;

  LinksModel? links;

  Image? image;

  @JsonKey(name: 'country_origin')
  String? countryOrigin;

  @JsonKey(name: 'genesis_date')
  DateTime? genesisDate;

  @JsonKey(name: 'sentiment_votes_up_percentage')
  double? sentimentVotesUpPercentage;

  @JsonKey(name: 'sentiment_votes_down_percentage')
  double? sentimentVotesDownPercentage;

  @JsonKey(name: 'market_cap_rank')
  int? marketCapRank;

  @JsonKey(name: 'coingecko_rank')
  int? coingeckoRank;

  @JsonKey(name: 'coingecko_score')
  double? coingeckoScore;

  @JsonKey(name: 'developer_score')
  double? developerScore;

  @JsonKey(name: 'community_score')
  double? communityScore;

  @JsonKey(name: 'liquidity_score')
  double? liquidityScore;

  @JsonKey(name: 'public_interest_score')
  double? publicInterestScore;

  @JsonKey(name: 'market_data')
  MarketData? marketData;

  @JsonKey(name: 'public_interest_stats')
  PublicInterestStats? publicInterestStats;

  @JsonKey(name: 'status_updates')
  List<Map<String,dynamic>?>? statusUpdates;

  @JsonKey(name: '')
  DateTime? lastUpdated;



  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  Map<String, dynamic> toJson() => _$CoinToJson(this);

  static String convertToJson(List<Coin> coins) {
    List jsonData =
    coins.map((coins) => coins.toJson()).toList();
    return jsonEncode(jsonData);
  }

  static List<Coin> fromJSon(String? json) {
    List<dynamic> jsonData = jsonDecode(json!);
    return jsonData.map((map) => Coin.fromJson(map)).toList();
  }
}

