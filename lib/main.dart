import 'package:flutter/material.dart';
import 'package:flutter_sample/pages/home.dart';

void main() {
  runApp(const FlutterSample());
}

class FlutterSample extends StatelessWidget {
  const FlutterSample({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(fontFamily: 'Lato'),
      home: const HomePage()
    );
  }
}
