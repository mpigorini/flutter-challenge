
import 'package:json_annotation/json_annotation.dart';

part 'CodeAdditionsDeletions4Weeks.g.dart';


@JsonSerializable()
class CodeAdditionsDeletions4Weeks  {
  CodeAdditionsDeletions4Weeks({
    required this.additions,
    required this.deletions,
  });

  int additions;
  int deletions;

  
  factory CodeAdditionsDeletions4Weeks.fromJson(Map<String, dynamic> json) => _$CodeAdditionsDeletions4WeeksFromJson(json);
  
  Map<String, dynamic> toJson() => _$CodeAdditionsDeletions4WeeksToJson(this);
}