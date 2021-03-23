// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MarketData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketData _$MarketDataFromJson(Map<String, dynamic> json) {
  return MarketData(
    (json['current_price'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    json['roi'] as Map<String, dynamic>?,
    (json['ath'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['ath_change_percentage'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['ath_date'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
    (json['atl'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['atl_change_percentage'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['atl_date'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
    (json['maket_cap'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    json['market_cap_rank'] as int?,
    (json['fully_diluted_valuation'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['total_volume'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['high_24h'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['low_24h'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_24h'] as num?)?.toDouble(),
    (json['price_change_percentage_24h'] as num?)?.toDouble(),
    (json['price_change_percentage_7d'] as num?)?.toDouble(),
    (json['price_change_percentage_14d'] as num?)?.toDouble(),
    (json['price_change_percentage_30d'] as num?)?.toDouble(),
    (json['price_change_percentage_60d'] as num?)?.toDouble(),
    (json['price_change_percentage_200d'] as num?)?.toDouble(),
    (json['price_change_percentage_1y'] as num?)?.toDouble(),
    (json['market_cap_change_24h'] as num?)?.toDouble(),
    (json['market_cap_change_percentage_24h'] as num?)?.toDouble(),
    (json['price_change_24h_in_currency'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_percentage_1h_in_currency'] as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_percentage_24h_in_currency'] as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_percentage_7d_in_currency'] as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_percentage_14d_in_currency'] as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_percentage_30d_in_currency'] as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_percentage_60d_in_currency'] as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_percentage_200d_in_currency'] as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['price_change_percentage_1y_in_currency'] as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['market_cap_change_24h_in_currency'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['market_cap_change_percentage_24h_in_currency']
            as Map<String, dynamic>?)
        ?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
    (json['total_supply'] as num?)?.toDouble(),
    (json['max_supply'] as num?)?.toDouble(),
    (json['circulating_supply'] as num?)?.toDouble(),
    json['last_updated'] == null
        ? null
        : DateTime.parse(json['last_updated'] as String),
  );
}

Map<String, dynamic> _$MarketDataToJson(MarketData instance) =>
    <String, dynamic>{
      'current_price': instance.currentPrice,
      'roi': instance.roi,
      'ath': instance.ath,
      'ath_change_percentage': instance.athChangePercentage,
      'ath_date':
          instance.athDate?.map((k, e) => MapEntry(k, e?.toIso8601String())),
      'atl': instance.atl,
      'atl_change_percentage': instance.atlChangePercentage,
      'atl_date':
          instance.atlDate?.map((k, e) => MapEntry(k, e?.toIso8601String())),
      'maket_cap': instance.marketCap,
      'market_cap_rank': instance.marketCapRank,
      'fully_diluted_valuation': instance.fullyDilutedValuation,
      'total_volume': instance.totalVolume,
      'high_24h': instance.high24H,
      'low_24h': instance.low24H,
      'price_change_24h': instance.priceChange24H,
      'price_change_percentage_24h': instance.priceChangePercentage24H,
      'price_change_percentage_7d': instance.priceChangePercentage7D,
      'price_change_percentage_14d': instance.priceChangePercentage14D,
      'price_change_percentage_30d': instance.priceChangePercentage30D,
      'price_change_percentage_60d': instance.priceChangePercentage60D,
      'price_change_percentage_200d': instance.priceChangePercentage200D,
      'price_change_percentage_1y': instance.priceChangePercentage1Y,
      'market_cap_change_24h': instance.marketCapChange24H,
      'market_cap_change_percentage_24h': instance.marketCapChangePercentage24H,
      'price_change_24h_in_currency': instance.priceChange24HInCurrency,
      'price_change_percentage_1h_in_currency':
          instance.priceChangePercentage1HInCurrency,
      'price_change_percentage_24h_in_currency':
          instance.priceChangePercentage24HInCurrency,
      'price_change_percentage_7d_in_currency':
          instance.priceChangePercentage7DInCurrency,
      'price_change_percentage_14d_in_currency':
          instance.priceChangePercentage14DInCurrency,
      'price_change_percentage_30d_in_currency':
          instance.priceChangePercentage30DInCurrency,
      'price_change_percentage_60d_in_currency':
          instance.priceChangePercentage60DInCurrency,
      'price_change_percentage_200d_in_currency':
          instance.priceChangePercentage200DInCurrency,
      'price_change_percentage_1y_in_currency':
          instance.priceChangePercentage1YInCurrency,
      'market_cap_change_24h_in_currency':
          instance.marketCapChange24HInCurrency,
      'market_cap_change_percentage_24h_in_currency':
          instance.marketCapChangePercentage24HInCurrency,
      'total_supply': instance.totalSupply,
      'max_supply': instance.maxSupply,
      'circulating_supply': instance.circulatingSupply,
      'last_updated': instance.lastUpdated?.toIso8601String(),
    };
