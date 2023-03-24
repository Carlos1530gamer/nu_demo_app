import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:nu_demo_app/data/entities/url_shortened_model.dart';
import 'package:nu_demo_app/data/repository/implementations/url_shortened_repository_imp.dart';
import 'package:nu_demo_app/data/repository/providers/url_shortened_repository_providers.dart';
import 'package:nu_demo_app/presentation/home/view_model/home_view_model.dart';

import '../../data/url_shortened_repository_test_fake_data.dart';

void main() {
  group("Home ViewModel test's", () {
    test('test input link state', () {
      ProviderContainer container = ProviderContainer();

      final viewModel = container.read(homeViewModel);

      expect(container.read(homeViewModelState).inputUrl, '');

      viewModel.updateInputLink('www');
      expect(container.read(homeViewModelState).inputUrl, 'www');

      viewModel.updateInputLink('www.example.com');
      expect(container.read(homeViewModelState).inputUrl, 'www.example.com');
    });

    test('test short and added to recently shorted links', () async {
      Client mockClient = MockClient((request) async {
        return Response(
          UrlShortenerRepoTestFakeData.urlShortenerData,
          200,
        );
      });
      ProviderContainer container = ProviderContainer(overrides: [
        urlShortenedRepositoryProvider.overrideWith(
          (ref) => UrlShortenedRepositoryImp(
            client: mockClient,
          ),
        ),
      ]);

      final viewModel = container.read(homeViewModel);

      expect(container.read(homeViewModelState).recentlyShortenedLinks, []);

      viewModel.updateInputLink('www.example.com');
      await viewModel.shortenerUrl();

      expect(
        container.read(homeViewModelState).recentlyShortenedLinks,
        [
          UrlShortenedModel(
            self: 'www.example.com',
            short:
                'https://url-shortener-server.onrender.com/api/alias/1879860204',
          ),
        ],
      );
    });
  });
}
