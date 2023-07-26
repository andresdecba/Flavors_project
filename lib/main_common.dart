import 'package:flavors_project/flavors/flavor_config.dart';
import 'package:flavors_project/network/http_client.dart';
import 'package:flutter/material.dart';

void mainCommon(FlavorConfig config) async {
  // here we can make some inicializations
  CustomHttpClientImpl(flavorConfig: config);

  // run the app
  runApp(
    App(flavor: config),
  );
}

class App extends StatelessWidget {
  const App({
    required this.flavor,
    super.key,
  });

  final FlavorConfig flavor;

  @override
  Widget build(BuildContext context) {
    final CustomHttpClient httpClient = CustomHttpClientImpl(flavorConfig: flavor);
    return MaterialApp(
      title: 'Flutter flavors example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(flavor.getEnvironment()),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => httpClient.get(),
                child: const Text('print get'),
              ),
              ElevatedButton(
                onPressed: () => httpClient.post(),
                child: const Text('print post'),
              ),
              ElevatedButton(
                onPressed: () => httpClient.put(),
                child: const Text('print put'),
              ),
              ElevatedButton(
                onPressed: () => httpClient.delete(),
                child: const Text('print delete'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
