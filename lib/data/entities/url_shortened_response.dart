import 'package:freezed_annotation/freezed_annotation.dart';

import 'url_shortened_model.dart';

part 'url_shortened_response.freezed.dart';
part 'url_shortened_response.g.dart';

@freezed
class UrlShortenedResponse with _$UrlShortenedResponse {
  factory UrlShortenedResponse({
    @JsonKey(name: 'alias') required String id,
    @JsonKey(name: '_links') required UrlShortenedModel shortedLinkModel,
  }) = _UrlShortenedResponse;

  factory UrlShortenedResponse.fromJson(Map<String, dynamic> json) =>
      _$UrlShortenedResponseFromJson(json);
}
