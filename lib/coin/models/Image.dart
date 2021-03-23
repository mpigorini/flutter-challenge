import 'package:json_annotation/json_annotation.dart';

part 'Image.g.dart';


@JsonSerializable()
class Image {
  Image(
    this.thumb,
    this.small,
    this.large,
  );

  String thumb;
  String small;
  String large;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}