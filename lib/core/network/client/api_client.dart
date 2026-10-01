/*
core/
└── network/
    ├── client/
    │   └── api_client.dart
    │
    ├── interceptors/
    │   ├── auth_interceptor.dart
    │   ├── logger_interceptor.dart
    │   └── error_interceptor.dart
    │
    └── connectivity/
        └── connectivity_service.dart
        ----------------------------------------
        abstract interface class ApiClient {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
}

----------------------------------------------
class DioApiClient implements ApiClient {
  final Dio dio;

  DioApiClient(this.dio);

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.get(
      path,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }
}
------------------------------------------------
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    // Add access token
    handler.next(options);
  }
}
-----------------------------------------------
abstract interface class ConnectivityService {
  Future<bool> get isConnected;
}
*/