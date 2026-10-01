/*
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void setupNetworkDependencies(GetIt sl) {
  sl.registerLazySingleton<Dio>(() {
  final environment = sl<EnvironmentConfig>();
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.example.com',environment.baseUrl
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );

    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    return dio;
  });
}
*/