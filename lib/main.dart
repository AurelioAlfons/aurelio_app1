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
      title: 'Aurelio Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 190, 12),
          title: const Text("Aurelio Flutter Demo"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            // ignore: avoid_print
            print('pressed!');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          )
        ]),
        body: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "🐦‍🔥 Hello, Welcome to Aurelio's UI 🐲",
                style: TextStyle(fontSize: 28),
              ),
              SizedBox(height: 28),
              Icon(Icons.backpack),
              Icon(Icons.leaderboard),
              Icon(Icons.person),
            ],
          ),
        ),
      ),
    );
  }
}
