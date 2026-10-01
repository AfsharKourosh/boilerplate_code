/*
core/
└── network/
    └── interceptors/
        ├── auth_interceptor.dart
        ├── logger_interceptor.dart
        └── error_interceptor.dart
        ----------------------------------------
        import 'package:dio/dio.dart';

import '../../storage/secure_storage.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorage secureStorage;

  AuthInterceptor(this.secureStorage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await secureStorage.read(
      'access_token',
    );

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] =
          'Bearer $token';
    }

    handler.next(options);
  }
}
----------------------------------------------------
import 'package:dio/dio.dart';

class LoggerInterceptor extends Interceptor {

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {

    print(
      '''
---------- REQUEST ----------
${options.method}
${options.uri}

Headers:
${options.headers}

Data:
${options.data}
----------------------------
''',
    );

    handler.next(options);
  }


  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {

    print(
      '''
---------- RESPONSE ----------
${response.statusCode}
${response.requestOptions.uri}

Data:
${response.data}
-----------------------------
''',
    );

    handler.next(response);
  }


  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {

    print(
      '''
---------- ERROR ----------
${err.type}

${err.message}

${err.response?.data}
--------------------------
''',
    );

    handler.next(err);
  }
}
*/