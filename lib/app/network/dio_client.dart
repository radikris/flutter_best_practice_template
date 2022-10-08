import 'package:best_practice_template/app/config.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectableModule {
  Dio getDio(Config config) {
    final cacheOption = CacheOptions(
      store: MemCacheStore(),
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 7),
    );
    return Dio(
      BaseOptions(
        contentType: 'application/json',
        connectTimeout: 15000,
        receiveTimeout: 15000,
        baseUrl: config.apiKey,
      ),
    )
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            final apiKey = config.apiKey;
            options.headers.addAll(
              {'x-api-key': apiKey, 'User-Agent': 'best_practice_template'},
            );
            debugPrint('::: Api Url : ${options.uri}');
            debugPrint('::: Api header : ${options.headers}');
            return handler.next(options);
          },
          onResponse: (response, handler) {
            debugPrint('::: Api response : $response');
            return handler.next(response);
          },
          onError: (DioError e, handler) {
            debugPrint('::: Api error : $e');
            return handler.next(e);
          },
        ),
      )
      ..interceptors.add(DioCacheInterceptor(options: cacheOption));
  }
}
