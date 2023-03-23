// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_shortened_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UrlShortenedResponse _$$_UrlShortenedResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UrlShortenedResponse(
      id: json['alias'] as String,
      shortedLinkModel:
          UrlShortenedModel.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UrlShortenedResponseToJson(
        _$_UrlShortenedResponse instance) =>
    <String, dynamic>{
      'alias': instance.id,
      '_links': instance.shortedLinkModel,
    };
