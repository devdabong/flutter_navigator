import 'package:flutter/material.dart';
import 'package:flutter_navigator/listview/animal_page.dart';

import 'model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = [
    'Bear',
    'Camel',
    'Deer',
    'Fox',
    'Kangaroo',
    'Koala',
    'Lion',
    'Tiger'
  ];

  static List<String> animalImagePath = [
    'images/bear.png',
    'images/camel.png',
    'images/deer.png',
    'images/fox.png',
    'images/kangaroo.png',
    'images/koala.png',
    'images/lion.png',
    'images/tiger.png'
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Australia',
    'Australia',
    'Africa',
    'Korea'
  ];

  final List<Animal> animalData = List.generate(
      animalLocation.length,
      (index) => Animal(
          animalName[index], animalLocation[index], animalImagePath[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
          itemCount: animalData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  animalData[index].name,
                ),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(animalData[index].imgPath),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AnimalPage(animal: animalData[index],)));
                  debugPrint(animalData[index].name);
                },
              ),
            );
          }),
    );
  }
}
