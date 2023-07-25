import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({
    required this.flavor,
    super.key,
  });

  final String flavor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter flavors example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(flavor),
        ),
      ),
    );
  }
}
