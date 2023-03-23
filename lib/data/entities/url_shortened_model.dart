import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_shortened_model.freezed.dart';
part 'url_shortened_model.g.dart';

@freezed
class UrlShortenedModel with _$UrlShortenedModel {
  factory UrlShortenedModel({
    required String self,
    required String short,
  }) = _UrlShortenedModel;

  factory UrlShortenedModel.fromJson(Map<String, dynamic> json) =>
      _$UrlShortenedModelFromJson(json);
}
