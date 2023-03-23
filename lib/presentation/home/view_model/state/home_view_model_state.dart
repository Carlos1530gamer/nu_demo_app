import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/entities/url_shortened_model.dart';

part 'home_view_model_state.freezed.dart';

@freezed
class HomeViewModelState with _$HomeViewModelState {
  factory HomeViewModelState({
    @Default('') String inputUrl,
    @Default([]) List<UrlShortenedModel> recentlyShortenedLinks,
  }) = _HomeViewModelState;
}
