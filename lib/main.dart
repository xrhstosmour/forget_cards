import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/content.dart';
import 'screens/home.dart';
import 'screens/settings.dart';

void main() {
  Paint.enableDithering = true; // Makes gradient background smooth.
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      title: 'Forget Cards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/settings': (context) => Settings(),
        '/content': (context) => Content(),
      },
    );
  }
}
