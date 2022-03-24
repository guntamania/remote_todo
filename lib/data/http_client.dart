import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

final httpClientProvider = Provider((_) => HttpClient.getInstance());

class HttpClient with DioMixin implements Dio {
  HttpClient._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: "http://10.0.2.2:3000/",
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );

    this.options = options;
    interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers.addAll(await userAgentClientHintsHeader());
      handler.next(options);
    }));

    if (kDebugMode) {
      // Local Log
      // interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => HttpClient._();
}
