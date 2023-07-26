import 'package:flavors_project/flavors/flavor_config.dart';

abstract class CustomHttpClient {
  Future get();
  Future post();
  Future put();
  Future delete();
}

class CustomHttpClientImpl implements CustomHttpClient {
  final FlavorConfig flavorConfig;

  CustomHttpClientImpl({
    required this.flavorConfig,
  });

  // TODO: now we can configure dio_client with the flavorConfig.apiUrl //

  @override
  Future delete() async {
    print('*DELETE* flavor: ${flavorConfig.getEnvironment()}, endpoint: ${flavorConfig.apiUrl}');
    return '';
  }

  @override
  Future get() async {
    print('*GET* flavor: ${flavorConfig.getEnvironment()}, endpoint: ${flavorConfig.apiUrl}');
    return '';
  }

  @override
  Future post() async {
    print('*POST* flavor: ${flavorConfig.getEnvironment()}, endpoint: ${flavorConfig.apiUrl}');
    return '';
  }

  @override
  Future put() async {
    print('*PUT* flavor: ${flavorConfig.getEnvironment()}, endpoint: ${flavorConfig.apiUrl}');
    return '';
  }
}
