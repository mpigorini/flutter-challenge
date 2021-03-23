import 'package:json_annotation/json_annotation.dart';

import 'ReposUrl.dart';

part 'LinksModel.g.dart';


@JsonSerializable()
class LinksModel {
    LinksModel(
        this.homepage,
        this.blockchainSite,
        this.officialForumUrl,
        this.chatUrl,
        this.announcementUrl,
        this.twitterScreenName,
        this.facebookUsername,
        this.bitcointalkThreadIdentifier,
        this.telegramChannelIdentifier,
        this.subredditUrl,
        this.reposUrl,
    );

    List<String>? homepage;
    @JsonKey(name: 'blockchain_site')
    List<String>? blockchainSite;

    @JsonKey(name: 'official_forum_url')
    List<String>? officialForumUrl;

    @JsonKey(name: 'chat_url')
    List<String>? chatUrl;

    @JsonKey(name: 'announcement_url')
    List<String>? announcementUrl;

    @JsonKey(name: 'twitter_screen_name')
    String? twitterScreenName;

    @JsonKey(name: 'facebook_username')
    String? facebookUsername;

    @JsonKey(name: 'bitcointalk_thread_identifier')
    int? bitcointalkThreadIdentifier;

    @JsonKey(name: 'telegram_channel_identifier')
    String? telegramChannelIdentifier;

    @JsonKey(name: 'subreddit_url')
    String? subredditUrl;

    @JsonKey(name: 'repos_url')
    ReposUrl? reposUrl;

    factory LinksModel.fromJson(Map<String, dynamic> json) => _$LinksModelFromJson(json);

    Map<String, dynamic> toJson() => _$LinksModelToJson(this);
}