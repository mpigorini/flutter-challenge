// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LinksModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinksModel _$LinksModelFromJson(Map<String, dynamic> json) {
  return LinksModel(
    (json['homepage'] as List<dynamic>?)?.map((e) => e as String).toList(),
    (json['blockchain_site'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    (json['official_forum_url'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    (json['chat_url'] as List<dynamic>?)?.map((e) => e as String).toList(),
    (json['announcement_url'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    json['twitter_screen_name'] as String?,
    json['facebook_username'] as String?,
    json['bitcointalk_thread_identifier'] as int?,
    json['telegram_channel_identifier'] as String?,
    json['subreddit_url'] as String?,
    json['repos_url'] == null
        ? null
        : ReposUrl.fromJson(json['repos_url'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LinksModelToJson(LinksModel instance) =>
    <String, dynamic>{
      'homepage': instance.homepage,
      'blockchain_site': instance.blockchainSite,
      'official_forum_url': instance.officialForumUrl,
      'chat_url': instance.chatUrl,
      'announcement_url': instance.announcementUrl,
      'twitter_screen_name': instance.twitterScreenName,
      'facebook_username': instance.facebookUsername,
      'bitcointalk_thread_identifier': instance.bitcointalkThreadIdentifier,
      'telegram_channel_identifier': instance.telegramChannelIdentifier,
      'subreddit_url': instance.subredditUrl,
      'repos_url': instance.reposUrl,
    };
