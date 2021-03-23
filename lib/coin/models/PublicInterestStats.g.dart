// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PublicInterestStats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicInterestStats _$PublicInterestStatsFromJson(Map<String, dynamic> json) {
  return PublicInterestStats(
    (json['alexa_rank'] as num?)?.toDouble(),
    (json['bing_matches'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$PublicInterestStatsToJson(
        PublicInterestStats instance) =>
    <String, dynamic>{
      'alexa_rank': instance.alexaRank,
      'bing_matches': instance.bingMatches,
    };
