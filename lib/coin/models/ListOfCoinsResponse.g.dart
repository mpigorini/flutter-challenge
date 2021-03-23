// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ListOfCoinsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfCoinsResponse _$ListOfCoinsResponseFromJson(Map<String, dynamic> json) {
  return ListOfCoinsResponse(
    (json['coins'] as List<dynamic>)
        .map((e) => SimpleCoin.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ListOfCoinsResponseToJson(
        ListOfCoinsResponse instance) =>
    <String, dynamic>{
      'coins': instance.coins,
    };
