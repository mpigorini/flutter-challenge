// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeveloperData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperData _$DeveloperDataFromJson(Map<String, dynamic> json) {
  return DeveloperData(
    json['forks'] as int,
    json['stars'] as int,
    json['subscribers'] as int,
    json['totalIssues'] as int,
    json['closedIssues'] as int,
    json['pullRequestsMerged'] as int,
    json['pullRequestContributors'] as int,
    CodeAdditionsDeletions4Weeks.fromJson(
        json['codeAdditionsDeletions4Weeks'] as Map<String, dynamic>),
    json['commitCount4Weeks'] as int,
    (json['last4WeeksCommitActivitySeries'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
  );
}

Map<String, dynamic> _$DeveloperDataToJson(DeveloperData instance) =>
    <String, dynamic>{
      'forks': instance.forks,
      'stars': instance.stars,
      'subscribers': instance.subscribers,
      'totalIssues': instance.totalIssues,
      'closedIssues': instance.closedIssues,
      'pullRequestsMerged': instance.pullRequestsMerged,
      'pullRequestContributors': instance.pullRequestContributors,
      'codeAdditionsDeletions4Weeks': instance.codeAdditionsDeletions4Weeks,
      'commitCount4Weeks': instance.commitCount4Weeks,
      'last4WeeksCommitActivitySeries': instance.last4WeeksCommitActivitySeries,
    };
