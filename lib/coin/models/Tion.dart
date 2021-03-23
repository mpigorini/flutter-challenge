import 'package:json_annotation/json_annotation.dart';

part 'Tion.g.dart';


@JsonSerializable()
class Tion {
  Tion(
    this.en,
    this.de,
    this.es,
    this.fr,
    this.it,
    this.pl,
    this.ro,
    this.hu,
    this.nl,
    this.pt,
    this.sv,
    this.vi,
    this.tr,
    this.ru,
    this.ja,
    this.zh,
    this.zhTw,
    this.ko,
    this.ar,
    this.th,
    this.id,
  );

  String en;
  String de;
  String es;
  String fr;
  String it;
  String pl;
  String ro;
  String hu;
  String nl;
  String pt;
  String sv;
  String vi;
  String tr;
  String ru;
  String ja;
  String zh;
  @JsonKey(name: 'zh-tw')
  String zhTw;
  String ko;
  String ar;
  String th;
  String id;

  factory Tion.fromJson(Map<String, dynamic> json) => _$TionFromJson(json);

  Map<String, dynamic> toJson() => _$TionToJson(this);
}