import '../../../core/networking/base_networking.dart';
import '../../entities/url_shortened_response.dart';

abstract class UrlShortenedRepository extends BaseNetworking {
  Future<UrlShortenedResponse> short({required String url});
}
