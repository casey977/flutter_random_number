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

  @override
  void initState() {
    super.initState();
    randInt = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GestureDetector(
      onTap: () {
        setState(() {
          randInt = Random().nextInt(6) + 1;
        });
      },
      child: Scaffold(
        body: Center(
          child: Text(
            randInt.toString(),
            style: const TextStyle(fontSize: 100),
          ),
        ),
      ),
    ));
  }
}
