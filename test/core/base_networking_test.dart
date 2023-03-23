import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_demo_app/core/enviroment.dart';

@GenerateNiceMocks([MockSpec<Client>()])
import 'base_networking_test.mocks.dart';
import 'fake_networking_impl.dart';

void main() {
  group("Base Networking Test's", () {
    MockClient mockClient = MockClient();
    FakeNetworkingImpl fakeNetworking = FakeNetworkingImpl(mockClient);

    final sucesssResponse = Response('{"result": "success"}', 200);
    final decodedSuccess = {'result': 'success'};
    final defaultHeaders = {'Content-Type': 'application/json'};

    setUp(() {
      mockClient = MockClient();
      fakeNetworking = FakeNetworkingImpl(mockClient);
    });

    test('test when use a get request', () async {
      when(
        mockClient.get(
          Uri.https(
            Enviroment.baseURL,
            '/',
          ),
          headers: defaultHeaders,
        ),
      ).thenAnswer(
        (realInvocation) async => sucesssResponse,
      );

      expect(
        await fakeNetworking.makeGet(),
        decodedSuccess,
      );
    });

    test('test when use a post request', () async {
      when(mockClient.post(
        Uri.https(
          Enviroment.baseURL,
          '/',
        ),
        headers: defaultHeaders,
        body: jsonEncode({'fakeBody': 'fakeBody'}),
      )).thenAnswer((realInvocation) async => sucesssResponse);

      expect(
        await fakeNetworking.makePost(),
        decodedSuccess,
      );
    });

    test('test when the client reponde unknow error', () async {
      when(
        mockClient.get(
          Uri.https(
            Enviroment.baseURL,
            '/',
          ),
          headers: defaultHeaders,
        ),
      ).thenAnswer(
        (realInvocation) async => Response('response', 4004),
      );

      expect(fakeNetworking.makeGet(), throwsA(isA<Exception>()));
    });
  });
}
