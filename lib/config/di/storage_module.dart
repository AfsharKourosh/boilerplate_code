/*
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

void setupStorageDependencies(GetIt sl) {
  sl.registerLazySingleton<LocalStorage>(
    () => LocalStorageImpl(sl()),
  );
}


abstract class LocalStorage {
  Future<void> save(String key, String value);

  String? get(String key);
}


class LocalStorageImpl implements LocalStorage {
  final SharedPreferences preferences;

  LocalStorageImpl(this.preferences);

  @override
  Future<void> save(String key, String value) async {
    await preferences.setString(key, value);
  }

  @override
  String? get(String key) {
    return preferences.getString(key);
  }
}
*/