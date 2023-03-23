import 'package:flutter/material.dart';

import 'home_recently_shorted_list.dart';

class HomeRecentlyShortedContent extends StatelessWidget {
  const HomeRecentlyShortedContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            "recently shortened Url's",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        SingleChildScrollView(
          child: HomeRecentlyShortedList(),
        ),
      ],
    );
  }
}
