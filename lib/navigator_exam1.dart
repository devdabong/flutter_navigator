import 'package:flutter/material.dart';
import 'package:flutter_navigator/ScreenA.dart';
import 'package:flutter_navigator/ScreenB.dart';
import 'package:flutter_navigator/ScreenC.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}


