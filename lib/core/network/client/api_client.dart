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
    Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
}

----------------------------------------------
import 'package:dio/dio.dart';

import '../error/exceptions/app_exception.dart';
import 'api_client.dart';
import 'exception_mapper.dart';

class DioApiClient implements ApiClient {
  const DioApiClient(this.dio);

  final Dio dio;

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await dio.get<T>(
        path,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      throw ExceptionMapper.map(e);
    }
  }

  @override
  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      throw ExceptionMapper.map(e);
    }
  }

  @override
  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      throw ExceptionMapper.map(e);
    }
  }

  @override
  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      throw ExceptionMapper.map(e);
    }
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