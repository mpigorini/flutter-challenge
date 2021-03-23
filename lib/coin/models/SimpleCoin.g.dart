// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SimpleCoin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleCoin _$SimpleCoinFromJson(Map<String, dynamic> json) {
  return SimpleCoin(
    json['id'] as String,
    json['symbol'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$SimpleCoinToJson(SimpleCoin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
    };
