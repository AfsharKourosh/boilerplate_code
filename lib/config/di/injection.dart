/*
import 'package:get_it/get_it.dart';

import 'network_module.dart';
import 'storage_module.dart';
///////////////////////////////////registerLazySingleton
final sl = GetIt.instance;

Future<void> initDependencies() async {

  sl.registerSingleton<EnvironmentConfig>(
    EnvironmentLoader.load(),
  );

  sl.registerLazySingleton<GoRouter>(
  () => createAppRouter(
    // dependencies
  ),
);
sl.registerLazySingleton<ApiClient>(
  () => DioApiClient(sl<Dio>()),
  
  await setupNetworkDependencies(sl);
  
  await setupStorageDependencies(sl);
  
  setupAuthDependencies(sl);
  .
  .
  .
  featurs

}
*/
