// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReposUrl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReposUrl _$ReposUrlFromJson(Map<String, dynamic> json) {
  return ReposUrl(
    (json['github'] as List<dynamic>).map((e) => e as String).toList(),
    (json['bitbucket'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$ReposUrlToJson(ReposUrl instance) => <String, dynamic>{
      'github': instance.github,
      'bitbucket': instance.bitbucket,
    };
