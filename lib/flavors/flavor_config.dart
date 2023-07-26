enum Environment {
  dev,
  prod,
  stg,
}

extension Pene on Environment {
  String get toStringName {
    switch (this) {
      case Environment.dev:
        return 'development-env';
      case Environment.prod:
        return 'production-env';
      case Environment.stg:
        return 'staging-env';
    }
  }
}

class FlavorConfig {
  FlavorConfig({
    required this.apiUrl,
    required this.environment,
  });

  final String apiUrl;
  final Environment environment;

  String getEnvironment() {
    return environment.toStringName;
  }
}
