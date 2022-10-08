import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectableModule {
  Dio get dio => Dio(BaseOptions(
      contentType: 'application/json',
      connectTimeout: 15000,
      receiveTimeout: 15000,
      baseUrl: "https://api.stagingcupid.com/api/v1"))
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          const API_KEY = 'sA,{tzUD=]dHvYNBJ4xVZ3c=&zS%.UqVc{But?kc';
          options.headers.addAll(
            {"x-api-key": API_KEY, "User-Agent": 'best_practice_template'},
          );
          print("::: Api Url : ${options.uri}");
          print("::: Api header : ${options.headers}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print("::: Api response : ${response}");
          return handler.next(response);
        },
        onError: (DioError e, handler) {
          print("::: Api error : $e");
          return handler.next(e);
        },
      ),
    );
}
