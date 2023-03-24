import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'fake_networking_impl.dart';

void main() {
  group("Base Networking Test's", () {
    FakeNetworkingImpl fakeNetworking = FakeNetworkingImpl(Client());

    final sucesssResponse = Response('{"result": "success"}', 200);
    final decodedSuccess = {'result': 'success'};

    void setupHttpStub(Future<Response> Function(Request) fn) {
      final mockClient = MockClient(fn);
      fakeNetworking = FakeNetworkingImpl(mockClient);
    }

    test('test when use a get request', () async {
      setupHttpStub((request) async {
        expect(request.method, 'GET');

        return sucesssResponse;
      });

      expect(
        await fakeNetworking.makeGet(),
        decodedSuccess,
      );
    });

    test('test when use a post request', () async {
      setupHttpStub((request) async {
        expect(request.method, 'POST');
        expect(request.body, jsonEncode({'fakeBody': 'fakeBody'}));

        return sucesssResponse;
      });

      expect(
        await fakeNetworking.makePost(),
        decodedSuccess,
      );
    });

    test('test when the client reponde unknow error', () async {
      setupHttpStub((request) async {
        return Response('response', 400);
      });

      expect(fakeNetworking.makeGet(), throwsA(isA<Exception>()));
    });
  });
}
