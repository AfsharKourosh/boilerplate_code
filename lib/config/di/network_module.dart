/*
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
/pretty_dio_logger.dart'






void setupNetworkDependencies(GetIt sl) {
    sl.registerLazySingleton<ConnectivityService>(
    () => ConnectivityServiceImpl(Connectivity()),
  );
  sl.registerLazySingleton<Dio>(() {
  final environment = sl<EnvironmentConfig>();
    final dio = Dio(
      BaseOptions(
        baseUrl:environment.baseUrl
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );

    dio.interceptors.addAll(
  [if (environment.isDevelopment)PrettyDioLogger()]
    );
        return dio;


  });
}
*/