import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import '../enviroment.dart';

abstract class BaseNetworking {
  BaseNetworking({required Client client}) : _client = client;

  final Client _client;

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

    defaultHeaders.addAll(aditionalHeaders ?? {});

    final Response response;

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

    return response.statusCode <= 200
        ? json.decode(response.body)
        : Future.error(Exception('bad request'));
  }
}

enum RequestType {
  get,
  post,
}
