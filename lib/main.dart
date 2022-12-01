import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigator',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('First page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to the Second page'),
          onPressed: (){
            Navigator.push(context2, MaterialPageRoute(
              builder: (context) => Secondpage()));
        }),
      ),
    );
  }
}

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Second page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the First page'),
          onPressed: (){
            Navigator.pop(ctx);
          }
        ),
      ),
    );
  }
}