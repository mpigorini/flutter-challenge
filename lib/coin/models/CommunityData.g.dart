// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CommunityData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityData _$CommunityDataFromJson(Map<String, dynamic> json) {
  return CommunityData(
    json['facebookLikes'],
    json['twitterFollowers'] as int,
    (json['redditAveragePosts48H'] as num).toDouble(),
    (json['redditAverageComments48H'] as num).toDouble(),
    json['redditSubscribers'] as int,
    json['redditAccountsActive48H'] as int,
    json['telegramChannelUserCount'],
  );
}

Map<String, dynamic> _$CommunityDataToJson(CommunityData instance) =>
    <String, dynamic>{
      'facebookLikes': instance.facebookLikes,
      'twitterFollowers': instance.twitterFollowers,
      'redditAveragePosts48H': instance.redditAveragePosts48H,
      'redditAverageComments48H': instance.redditAverageComments48H,
      'redditSubscribers': instance.redditSubscribers,
      'redditAccountsActive48H': instance.redditAccountsActive48H,
      'telegramChannelUserCount': instance.telegramChannelUserCount,
    };
