
import 'package:flutter/material.dart';
import 'package:flutter_navigator/ScreenB.dart';
import 'package:flutter_navigator/ScreenC.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contextA) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text('Go to ScreenB'),
              onPressed: (){
                Navigator.pushNamed(contextA, '/b');
              }
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text('Go to ScreenC'),
              onPressed: (){
                Navigator.pushNamed(contextA, '/c');
              }
            ),
          ],
        ),
      ),
    );
  }
}
