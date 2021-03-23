import 'package:json_annotation/json_annotation.dart';

part 'ReposUrl.g.dart';


@JsonSerializable()
class ReposUrl {
  ReposUrl(
    this.github,
    this.bitbucket,
  );

  List<String> github;
  List<String> bitbucket;

  factory ReposUrl.fromJson(Map<String, dynamic> json) => _$ReposUrlFromJson(json);

  Map<String, dynamic> toJson() => _$ReposUrlToJson(this);
}
