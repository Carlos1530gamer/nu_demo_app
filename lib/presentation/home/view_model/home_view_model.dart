import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/providers/shortener_url_use_case_providers.dart';
import 'state/home_view_model_state.dart';

class HomeStateNotifier extends StateNotifier<HomeViewModelState> {
  HomeStateNotifier(this.ref) : super(HomeViewModelState());

  final Ref ref;

  void updateInputLink(String link) {
    state = state.copyWith(
      inputUrl: link,
    );
  }

  void shortenerUrl() async {
    final useCase = ref.read(shortenerUrlUseCaseProvider);
    final response = await useCase.execute(url: state.inputUrl);
    final shortedLinks = [
      response.shortedLinkModel,
      ...state.recentlyShortenedLinks,
    ];

    state = state.copyWith(
      recentlyShortenedLinks: shortedLinks,
    );
  }
}

final homeViewModelState =
    StateNotifierProvider.autoDispose<HomeStateNotifier, HomeViewModelState>(
  (ref) => throw UnimplementedError(),
);

final homeViewModel = Provider.autoDispose<HomeStateNotifier>(
  (ref) => ref.watch(homeViewModelState.notifier),
  dependencies: [
    homeViewModelState,
  ],
);
