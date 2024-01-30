import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  late int randInt;
  var rand = Random();

  @override
  void initState() {
    super.initState();
    randInt = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0)),
        home: GestureDetector(
            onTap: () {
              setState(() {
                randInt = rand.nextInt(6) + 1;
              });
            },
            child: Scaffold(
              body: Center(
                child: Text(
                  randInt.toString(),
                  style: const TextStyle(fontSize: 100, color: Colors.white),
                ),
              ),
            )));
  }
}
