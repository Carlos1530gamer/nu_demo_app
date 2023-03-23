import 'package:flutter/material.dart';

import '../../../../data/entities/url_shortened_model.dart';

class HomeRecentlyShortedListItem extends StatelessWidget {
  const HomeRecentlyShortedListItem({
    super.key,
    required this.shortenedLink,
  });

  final UrlShortenedModel shortenedLink;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(shortenedLink.short),
        Text(shortenedLink.self),
      ],
    );
  }
}
