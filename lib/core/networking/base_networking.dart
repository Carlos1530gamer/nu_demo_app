import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import '../enviroment.dart';

abstract class BaseNetworking {
  BaseNetworking();

  Client get _client => Client();

  final Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
  };

  @protected
  Future<Map<String, dynamic>> execute(
      {required RequestType type,
      required String path,
      Map<String, String>? aditionalHeaders,
      Map<String, dynamic>? body}) async {
    final uri = Uri.https(Enviroment.baseURL, path);
    final Response response;
    defaultHeaders.addAll(aditionalHeaders ?? {});

    switch (type) {
      case RequestType.get:
        response = await _client.get(
          uri,
          headers: defaultHeaders,
        );
        break;
      case RequestType.post:
        response = await _client.post(
          uri,
          headers: defaultHeaders,
          body: jsonEncode(body),
        );
    }

    return json.decode(response.body);
  }
}

enum RequestType {
  get,
  post,
}
