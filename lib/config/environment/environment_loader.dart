/*
class EnvironmentLoader {
  static const environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: 'development',
  );

  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
  );

  static EnvironmentConfig load() {
    return EnvironmentConfig(
        if (baseUrl.trim().isEmpty) {
      throw StateError('BASE_URL must be provided.');
    }
      environment: switch (environment) {
        'development' => AppEnvironment.development,
        'staging' => AppEnvironment.staging,
        'production' => AppEnvironment.production,
        _ => throw UnsupportedError(
            'Unknown environment: $environment',
          ),
      },
      baseUrl: baseUrl,
    );
  }
}

*/
