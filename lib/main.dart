import 'package:flutter/material.dart';

// Author: Aurelio Hevi Alfons

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "🐦‍🔥 Hello, Welcome to Aurelio's UI 🐲",
                style: TextStyle(fontSize: 28),
              ),
              const SizedBox(height: 20), // Space between text and icons
              const Icon(Icons.backpack),
              const Icon(Icons.leaderboard),
              const Icon(Icons.person),
              const SizedBox(height: 20), // Space between icons and button
              ElevatedButton(
                child: const Text('Navigate'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AboutScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      body: const Center(
        child: Text('This is the About Screen'),
      ),
    );
  }
}
