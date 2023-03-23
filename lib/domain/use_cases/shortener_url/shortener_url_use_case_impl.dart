import '../../../data/entities/url_shortened_response.dart';
import '../../../data/repository/definitions/url_shortened_repository.dart';
import 'shortener_url_use_case.dart';

class ShortenerUrlUseCaseImpl implements ShortenerUrlUseCase {
  const ShortenerUrlUseCaseImpl({
    required this.urlShortenedRepo,
  });

  final UrlShortenedRepository urlShortenedRepo;

  @override
  Future<UrlShortenedResponse> execute({required String url}) async =>
      await urlShortenedRepo.short(url: url);
}
