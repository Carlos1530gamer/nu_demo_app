import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import '../implementations/url_shortened_repository_imp.dart';

final urlShortenedRepositoryProvider = Provider(
  (ref) => UrlShortenedRepositoryImp(
    client: Client(),
  ),
);
