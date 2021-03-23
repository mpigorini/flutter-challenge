import 'package:json_annotation/json_annotation.dart';

part 'CommunityData.g.dart';


@JsonSerializable()
class CommunityData {
  CommunityData(
    this.facebookLikes,
    this.twitterFollowers,
    this.redditAveragePosts48H,
    this.redditAverageComments48H,
    this.redditSubscribers,
    this.redditAccountsActive48H,
    this.telegramChannelUserCount,
  );

  dynamic facebookLikes;
  int twitterFollowers;
  double redditAveragePosts48H;
  double redditAverageComments48H;
  int redditSubscribers;
  int redditAccountsActive48H;
  dynamic telegramChannelUserCount;

  factory CommunityData.fromJson(Map<String, dynamic> json) => _$CommunityDataFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityDataToJson(this);
}