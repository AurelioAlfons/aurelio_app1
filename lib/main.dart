// Author: Aurelio Hevi Alfons
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 190, 12),
          title: const Text("Aurelio Flutter Demo"),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text("Hello, Welcome to Aurelio's UI 🐲"),
          ),
        ),
      ),
    );
  }
}
