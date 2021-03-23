// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Ticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticker _$TickerFromJson(Map<String, dynamic> json) {
  return Ticker(
    _$enumDecode(_$BaseEnumMap, json['base']),
    json['target'] as String,
    Market.fromJson(json['market'] as Map<String, dynamic>),
    (json['last'] as num).toDouble(),
    (json['volume'] as num).toDouble(),
    Map<String, double>.from(json['convertedLast'] as Map),
    Map<String, double>.from(json['convertedVolume'] as Map),
    (json['bidAskSpreadPercentage'] as num).toDouble(),
    DateTime.parse(json['timestamp'] as String),
    DateTime.parse(json['lastTradedAt'] as String),
    DateTime.parse(json['lastFetchAt'] as String),
    json['isAnomaly'] as bool,
    json['isStale'] as bool,
    json['tradeUrl'] as String,
    json['tokenInfoUrl'],
    _$enumDecode(_$IdEnumMap, json['coinId']),
  );
}

Map<String, dynamic> _$TickerToJson(Ticker instance) => <String, dynamic>{
      'base': _$BaseEnumMap[instance.base],
      'target': instance.target,
      'market': instance.market,
      'last': instance.last,
      'volume': instance.volume,
      'convertedLast': instance.convertedLast,
      'convertedVolume': instance.convertedVolume,
      'bidAskSpreadPercentage': instance.bidAskSpreadPercentage,
      'timestamp': instance.timestamp.toIso8601String(),
      'lastTradedAt': instance.lastTradedAt.toIso8601String(),
      'lastFetchAt': instance.lastFetchAt.toIso8601String(),
      'isAnomaly': instance.isAnomaly,
      'isStale': instance.isStale,
      'tradeUrl': instance.tradeUrl,
      'tokenInfoUrl': instance.tokenInfoUrl,
      'coinId': _$IdEnumMap[instance.coinId],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$BaseEnumMap = {
  Base.BTC: 'BTC',
  Base.ETH: 'ETH',
  Base.XBT: 'XBT',
  Base.WBTC: 'WBTC',
  Base.LTC: 'LTC',
  Base.BNB: 'BNB',
  Base.XRP: 'XRP',
  Base.LINK: 'LINK',
};

const _$IdEnumMap = {
  Id.BITCOIN: 'BITCOIN',
  Id.ETHEREUM: 'ETHEREUM',
  Id.WRAPPED_BITCOIN: 'WRAPPED_BITCOIN',
  Id.LITECOIN: 'LITECOIN',
  Id.BINANCECOIN: 'BINANCECOIN',
  Id.RIPPLE: 'RIPPLE',
  Id.CHAINLINK: 'CHAINLINK',
};
