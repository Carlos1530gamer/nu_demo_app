import 'package:flutter/material.dart';

import 'widgets/home_recently_shorted_content.dart';
import 'widgets/home_short_component.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nu Bank Demo App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeShortComponent(),
            Expanded(
              child: HomeRecentlyShortedContent(),
            ),
          ],
        ),
      ),
    );
  }
}
