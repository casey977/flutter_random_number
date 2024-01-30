import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var randInt = Random().nextInt(10).toString();

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            randInt,
            style: const TextStyle(fontSize: 100),
          ),
        ),
      ),
    );
  }
}
