

import 'package:challenge/coin/models/SimpleCoin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ListOfCoinsResponse.g.dart';


@JsonSerializable()
class ListOfCoinsResponse {

  List<SimpleCoin> coins;
  ListOfCoinsResponse(this.coins);

  factory ListOfCoinsResponse.fromJson(Map<String, dynamic> json) => _$ListOfCoinsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListOfCoinsResponseToJson(this);
}