/*
core/
└── error/
    ├── exceptions/
    │   ├── app_exception.dart
    │   ├── network_exception.dart
    │   └── cache_exception.dart
    │
    └── failures/
        ├── failure.dart
        ├── server_failure.dart
        ├── network_failure.dart
        └── cache_failure.dart
        ----------------------------------------
        class AppException implements Exception {
  final String message;

  const AppException(this.message);

  @override
  String toString() => message;
}


class NetworkException extends AppException {
  const NetworkException(super.message);
}
*/