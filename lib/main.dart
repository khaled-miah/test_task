import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: TestTaskScreen()));
}

class TestTaskScreen extends StatefulWidget {
  const TestTaskScreen({super.key});

  @override
  TestTaskScreenState createState() => TestTaskScreenState();
}

class TestTaskScreenState extends State {
  // Default Background Color.
  Color backgroundColor = const Color.fromARGB(223, 218, 170, 40);

  final Random random = Random();

  void randomColorGenerator() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      backgroundColor = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => randomColorGenerator(),
      child: Scaffold(
          backgroundColor: backgroundColor,
          body: Center(
            child: Text(
              "Hello there",
              style:
                  GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
