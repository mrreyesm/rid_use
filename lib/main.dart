import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:rid_use/screens/welcome/welcome.dart';

void main() async {
  await Future.delayed(Duration(seconds: 5));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen()
    );
  }
}

  class SplashScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(home: Welcome(),);
    }
  }