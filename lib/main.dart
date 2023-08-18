import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

void main() {
  const List<Color> colorList = [
    Color.fromARGB(248, 56, 5, 116),
    Color.fromARGB(255, 121, 9, 196),
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: colorList,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
