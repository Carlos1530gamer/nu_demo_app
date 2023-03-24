import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_demo_app/data/repository/implementations/url_shortened_repository_imp.dart';
import 'package:nu_demo_app/data/repository/providers/url_shortened_repository_providers.dart';
import 'package:nu_demo_app/domain/providers/shortener_url_use_case_providers.dart';

@GenerateNiceMocks([MockSpec<UrlShortenedRepositoryImp>()])
import 'shortener_url_use_case_test.mocks.dart';

void main() {
  group('Test for shortener url usecase', () {
    test('Test use case shortener code', () async {
      const urlToShort = 'www.example.com';

      ProviderContainer container = ProviderContainer();

      container = ProviderContainer(overrides: [
        urlShortenedRepositoryProvider.overrideWith(
          (ref) => MockUrlShortenedRepositoryImp(),
        )
      ]);

      final useCase = container.read(shortenerUrlUseCaseProvider);
      final repository = container.read(urlShortenedRepositoryProvider);
      await useCase.execute(url: urlToShort);

      verify(repository.short(url: urlToShort)).called(1);
    });
  });
}
