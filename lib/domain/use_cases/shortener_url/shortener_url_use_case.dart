import '../../../data/entities/url_shortened_response.dart';

abstract class ShortenerUrlUseCase {
  Future<UrlShortenedResponse> execute({required String url});
}
