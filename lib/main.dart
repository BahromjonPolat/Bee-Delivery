import 'package:bee_delivery/ui/splash_screen.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bee Delivery",
      theme: ThemeData(
        primaryColor: Colors.yellow,
        accentColor: Colors.yellowAccent,
      ),
      home: SplashScreenPage(),
    );
  }
}