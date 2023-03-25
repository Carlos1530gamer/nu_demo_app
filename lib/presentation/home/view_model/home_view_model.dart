import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/providers/shortener_url_use_case_providers.dart';
import 'state/home_view_model_state.dart';

class HomeStateNotifier extends ChangeNotifier {
  HomeStateNotifier(this.ref) : super();

  final Ref ref;
  HomeViewModelState viewState = HomeViewModelState();

  void updateInputLink(String link) {
    viewState = viewState.copyWith(
      inputUrl: link,
    );
  }

  Future<void> shortenerUrl() async {
    final useCase = ref.read(shortenerUrlUseCaseProvider);
    final response = await useCase.execute(url: viewState.inputUrl);
    final shortedLinks = [
      response.shortedLinkModel,
      ...viewState.recentlyShortenedLinks,
    ];

    viewState = viewState.copyWith(
      recentlyShortenedLinks: shortedLinks,
    );
    notifyListeners();
  }
}

final homeViewModel = ChangeNotifierProvider.autoDispose<HomeStateNotifier>(
  (ref) => HomeStateNotifier(ref),
);

final homeViewModelState = Provider.autoDispose<HomeViewModelState>(
  (ref) => ref.watch(homeViewModel).viewState,
  dependencies: [
    homeViewModel,
  ],
);
