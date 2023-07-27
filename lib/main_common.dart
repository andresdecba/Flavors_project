import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void mainCommon(String envFileName) async {
  // here we can make some inicializations
  await dotenv.load(fileName: envFileName);

  // run the app
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // ahora podemos acceder a las variables de entorno como si fuera un mapa
    String environment = dotenv.env['ENVIRONMENT']!;
    String baseUrl = dotenv.env['BASE_URL']!;
    String apiKey = dotenv.env['API_KEY']!;

    return MaterialApp(
      title: 'Flutter flavors example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flavors config example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CURRENT FLAVOR: $environment'),
              Text('URL: $baseUrl'),
              Text('API KEY: $apiKey'),
            ],
          ),
        ),
      ),
    );
  }
}
