import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../data/entities/url_shortened_model.dart';

class HomeRecentlyShortedListItem extends StatelessWidget {
  const HomeRecentlyShortedListItem({
    super.key,
    required this.shortenedLink,
  });

  final UrlShortenedModel shortenedLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: InkWell(
        onTap: () {
          Clipboard.setData(
            ClipboardData(
              text: shortenedLink.short,
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              shortenedLink.short,
              style: const TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'original link: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: shortenedLink.self,
                      style: const TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
