// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coin _$CoinFromJson(Map<String, dynamic> json) {
  return Coin(
    json['id'] as String,
    json['symbol'] as String,
    json['name'] as String,
    json['asset_platform_id'],
    json['block_time_in_minutes'] as int?,
    json['hashing_algorithm'] as String?,
    (json['categories'] as List<dynamic>?)?.map((e) => e as String).toList(),
    json['public_notice'],
    json['additional_notices'] as List<dynamic>?,
    json['localization'] == null
        ? null
        : Tion.fromJson(json['localization'] as Map<String, dynamic>),
    json['description'] == null
        ? null
        : Tion.fromJson(json['description'] as Map<String, dynamic>),
    json['links'] == null
        ? null
        : LinksModel.fromJson(json['links'] as Map<String, dynamic>),
    json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    json['country_origin'] as String?,
    json['genesis_date'] == null
        ? null
        : DateTime.parse(json['genesis_date'] as String),
    (json['sentiment_votes_up_percentage'] as num?)?.toDouble(),
    (json['sentiment_votes_down_percentage'] as num?)?.toDouble(),
    json['market_cap_rank'] as int?,
    json['coingecko_rank'] as int?,
    (json['coingecko_score'] as num?)?.toDouble(),
    (json['developer_score'] as num?)?.toDouble(),
    (json['community_score'] as num?)?.toDouble(),
    (json['liquidity_score'] as num?)?.toDouble(),
    (json['public_interest_score'] as num?)?.toDouble(),
    json['public_interest_stats'] == null
        ? null
        : PublicInterestStats.fromJson(
            json['public_interest_stats'] as Map<String, dynamic>),
    (json['status_updates'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>?)
        .toList(),
    json[''] == null ? null : DateTime.parse(json[''] as String),
  )..marketData = json['market_data'] == null
      ? null
      : MarketData.fromJson(json['market_data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'asset_platform_id': instance.assetPlatformId,
      'block_time_in_minutes': instance.blockTimeInMinutes,
      'hashing_algorithm': instance.hashingAlgorithm,
      'categories': instance.categories,
      'public_notice': instance.publicNotice,
      'additional_notices': instance.additionalNotices,
      'localization': instance.localization,
      'description': instance.description,
      'links': instance.links,
      'image': instance.image,
      'country_origin': instance.countryOrigin,
      'genesis_date': instance.genesisDate?.toIso8601String(),
      'sentiment_votes_up_percentage': instance.sentimentVotesUpPercentage,
      'sentiment_votes_down_percentage': instance.sentimentVotesDownPercentage,
      'market_cap_rank': instance.marketCapRank,
      'coingecko_rank': instance.coingeckoRank,
      'coingecko_score': instance.coingeckoScore,
      'developer_score': instance.developerScore,
      'community_score': instance.communityScore,
      'liquidity_score': instance.liquidityScore,
      'public_interest_score': instance.publicInterestScore,
      'market_data': instance.marketData,
      'public_interest_stats': instance.publicInterestStats,
      'status_updates': instance.statusUpdates,
      '': instance.lastUpdated?.toIso8601String(),
    };
