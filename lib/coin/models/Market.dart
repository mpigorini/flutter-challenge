import 'package:json_annotation/json_annotation.dart';

part 'Market.g.dart';


@JsonSerializable()
class Market {
  Market(
    this.name,
    this.identifier,
    this.hasTradingIncentive,
  );

  String name;
  String identifier;
  bool hasTradingIncentive;

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);

  Map<String, dynamic> toJson() => _$MarketToJson(this);
}
