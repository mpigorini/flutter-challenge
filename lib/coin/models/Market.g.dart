// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Market.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Market _$MarketFromJson(Map<String, dynamic> json) {
  return Market(
    json['name'] as String,
    json['identifier'] as String,
    json['hasTradingIncentive'] as bool,
  );
}

Map<String, dynamic> _$MarketToJson(Market instance) => <String, dynamic>{
      'name': instance.name,
      'identifier': instance.identifier,
      'hasTradingIncentive': instance.hasTradingIncentive,
    };
