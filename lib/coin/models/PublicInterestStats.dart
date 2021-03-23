import 'package:json_annotation/json_annotation.dart';

part 'PublicInterestStats.g.dart';


@JsonSerializable()
class PublicInterestStats {
  PublicInterestStats(
    this.alexaRank,
    this.bingMatches,
  );

  @JsonKey(name: 'alexa_rank')
  double? alexaRank;
  @JsonKey(name: 'bing_matches')
  double? bingMatches;

  factory PublicInterestStats.fromJson(Map<String, dynamic> json) => _$PublicInterestStatsFromJson(json);

  Map<String, dynamic> toJson() => _$PublicInterestStatsToJson(this);
}