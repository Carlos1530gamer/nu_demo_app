import 'package:http/http.dart';

import '../../../core/networking/base_networking.dart';
import '../../entities/url_shortened_response.dart';

abstract class UrlShortenedRepository extends BaseNetworking {
  UrlShortenedRepository({required Client client}) : super(client: client);

  Future<UrlShortenedResponse> short({required String url});
}
