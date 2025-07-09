import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../../app.dart';

class CustomDio extends DioForNative {
  final _authInterceptor = const Interceptor();

  CustomDio()
    : super(
        BaseOptions(
          baseUrl: AppEnv.baseUrl,
          connectTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 10000),
        ),
      ) {
    interceptors.add(LogInterceptor(requestBody: true, responseBody: true, requestHeader: true));
  }

  CustomDio auth() {
    interceptors.add(_authInterceptor);
    return this;
  }

  CustomDio unAuth() {
    interceptors.remove(_authInterceptor);
    return this;
  }
}
