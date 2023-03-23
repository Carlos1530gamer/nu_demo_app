import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../view_model/home_view_model.dart';
import 'home_recently_shorted_list_item.dart';

class HomeRecentlyShortedList extends HookConsumerWidget {
  const HomeRecentlyShortedList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyShortedLinks =
        ref.watch(homeViewModelState).recentlyShortenedLinks;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: recentlyShortedLinks.length,
      itemBuilder: (context, index) {
        final recentlyShortedLink = recentlyShortedLinks[index];

        return HomeRecentlyShortedListItem(
          shortenedLink: recentlyShortedLink,
        );
      },
    );
  }
}
