// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To DO LIST'),
      ),
      body: Center(
        child: Text('Hello Flutter', style: TextStyle(fontSize: 24.0,),),
      ),
    );
  }

}