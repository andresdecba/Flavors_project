import 'package:flavors_project/flavors/flavor_config.dart';
import 'package:flavors_project/main_common.dart';

void main() {
  final config = FlavorConfig(
    apiUrl: 'https://prod.myapp.com/api/v1.0',
    environment: Environment.prod,
  );

  mainCommon(config);
}
