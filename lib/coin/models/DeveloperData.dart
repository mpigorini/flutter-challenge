import 'package:json_annotation/json_annotation.dart';

import 'CodeAdditionsDeletions4Weeks.dart';

part 'DeveloperData.g.dart';


@JsonSerializable()
class DeveloperData {
  DeveloperData(
    this.forks,
    this.stars,
    this.subscribers,
    this.totalIssues,
    this.closedIssues,
    this.pullRequestsMerged,
    this.pullRequestContributors,
    this.codeAdditionsDeletions4Weeks,
    this.commitCount4Weeks,
    this.last4WeeksCommitActivitySeries,
  );

  int forks;
  int stars;
  int subscribers;
  int totalIssues;
  int closedIssues;
  int pullRequestsMerged;
  int pullRequestContributors;
  CodeAdditionsDeletions4Weeks codeAdditionsDeletions4Weeks;
  int commitCount4Weeks;
  List<int> last4WeeksCommitActivitySeries;

  factory DeveloperData.fromJson(Map<String, dynamic> json) => _$DeveloperDataFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperDataToJson(this);
}