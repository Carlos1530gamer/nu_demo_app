import 'package:http/http.dart';

import '../../../core/networking/base_networking.dart';
import '../../entities/url_shortened_response.dart';
import '../definitions/url_shortened_repository.dart';

class UrlShortenedRepositoryImp extends UrlShortenedRepository {
  UrlShortenedRepositoryImp({required Client client}) : super(client: client);

  @override
  Future<UrlShortenedResponse> short({required String url}) async {
    final response = await execute(
      type: RequestType.post,
      path: '/api/alias',
      body: {'url': url},
    );

    return UrlShortenedResponse.fromJson(response);
  }
}
