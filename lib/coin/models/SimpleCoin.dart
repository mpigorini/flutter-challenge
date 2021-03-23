import 'package:json_annotation/json_annotation.dart';

part 'SimpleCoin.g.dart';


@JsonSerializable()
class SimpleCoin {
  SimpleCoin(
    this.id,
    this.symbol,
    this.name,
  );

  String id;
  String symbol;
  String name;

  factory SimpleCoin.fromJson(Map<String, dynamic> json) => _$SimpleCoinFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleCoinToJson(this);
}
