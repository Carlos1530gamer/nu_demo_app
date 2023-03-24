import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:nu_demo_app/data/repository/implementations/url_shortened_repository_imp.dart';
import 'package:nu_demo_app/data/repository/providers/url_shortened_repository_providers.dart';

import 'url_shortened_repository_test_fake_data.dart';

void main() {
  group("url shortener repository test's", () {
    test('test repository data decoded integrity', () async {
      const urlToShort = 'www.example.com';

      ProviderContainer container = ProviderContainer();
      Client mockClient = MockClient((request) async {
        return Response(
          UrlShortenerRepoTestFakeData.urlShortenerData,
          200,
        );
      });

      container = ProviderContainer(overrides: [
        urlShortenedRepositoryProvider.overrideWith(
          (ref) => UrlShortenedRepositoryImp(
            client: mockClient,
          ),
        )
      ]);

      final response = await container
          .read(urlShortenedRepositoryProvider)
          .short(url: urlToShort);

      expect(response.id, '1879860204');
      expect(response.shortedLinkModel.self, urlToShort);
      expect(response.shortedLinkModel.short,
          'https://url-shortener-server.onrender.com/api/alias/1879860204');
    });
  });
}
