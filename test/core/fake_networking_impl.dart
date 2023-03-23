import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:nu_demo_app/core/networking/base_networking.dart';

class FakeNetworkingImpl extends BaseNetworking {
  FakeNetworkingImpl(Client client) : super(client: client);

  Future<Map<String, dynamic>> makeGet() async =>
      await execute(type: RequestType.get, path: '/');

  Future<Map<String, dynamic>> makePost() async => await execute(
      type: RequestType.post, path: '/', body: {'fakeBody': 'fakeBody'});
}
