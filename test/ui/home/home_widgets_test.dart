import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:nu_demo_app/data/entities/url_shortened_model.dart';
import 'package:nu_demo_app/data/repository/implementations/url_shortened_repository_imp.dart';
import 'package:nu_demo_app/data/repository/providers/url_shortened_repository_providers.dart';
import 'package:nu_demo_app/presentation/home/view/home_view_widget.dart';
import 'package:nu_demo_app/presentation/home/view/widgets/home_recently_shorted_list_item.dart';
import 'package:nu_demo_app/presentation/home/view/widgets/home_short_component.dart';
import 'package:nu_demo_app/presentation/home/view_model/home_view_model.dart';

import '../../data/url_shortened_repository_test_fake_data.dart';

void main() {
  group("home widgets test's", () {
    Widget buildRootScoope(Widget root) {
      Client mockClient = MockClient((request) async {
        return Response(
          UrlShortenerRepoTestFakeData.urlShortenerData,
          200,
        );
      });

      return ProviderScope(
        overrides: [
          urlShortenedRepositoryProvider.overrideWith(
            (ref) => UrlShortenedRepositoryImp(
              client: mockClient,
            ),
          ),
        ],
        child: root,
      );
    }

    testWidgets(
      'test input and short link',
      (tester) async {
        const rootWidget = MaterialApp(
          home: Scaffold(
            body: HomeShortComponent(),
          ),
        );

        final scope = buildRootScoope(rootWidget);

        await tester.pumpWidget(scope);

        final context = tester.element(find.byWidget(rootWidget));
        final ref = ProviderScope.containerOf(context);

        await tester.enterText(find.byType(TextField), 'www.example.com');

        await tester.tap(find.byType(IconButton));
        await tester.pumpAndSettle();

        expect(ref.read(homeViewModelState).inputUrl, 'www.example.com');
        expect(
          ref.read(homeViewModelState).recentlyShortenedLinks,
          [
            UrlShortenedModel(
              self: 'www.example.com',
              short:
                  'https://url-shortener-server.onrender.com/api/alias/1879860204',
            ),
          ],
        );
      },
    );

    testWidgets('test add recently cell when short link', (tester) async {
      const rootWidget = MaterialApp(
        home: HomeViewWidget(),
      );

      final scope = buildRootScoope(rootWidget);
      await tester.pumpWidget(scope);

      await tester.enterText(find.byType(TextField), 'www.example.com');

      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      // look if was added item to list
      expect(find.byType(HomeRecentlyShortedListItem), findsOneWidget);

      await tester.tap(find.byType(IconButton));
      await tester.tap(find.byType(IconButton));
      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      expect(find.byType(HomeRecentlyShortedListItem), findsNWidgets(4));
    });
  });
}
