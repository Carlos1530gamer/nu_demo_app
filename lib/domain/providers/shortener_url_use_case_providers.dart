import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repository/providers/url_shortened_repository_providers.dart';
import '../use_cases/shortener_url/shortener_url_use_case_impl.dart';

final shortenerUrlUseCaseProvider = Provider(
  (ref) => ShortenerUrlUseCaseImpl(
    urlShortenedRepo: ref.read(urlShortenedRepositoryProvider),
  ),
);
