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
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "🐦‍🔥 Hello, Welcome to Aurelio's UI 🐲",
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(
                      width: 10), // Horizontal space between text and icons
                  Icon(Icons.backpack),
                  SizedBox(width: 10),
                  Icon(Icons.leaderboard),
                  SizedBox(width: 10),
                  Icon(Icons.person),
                ],
              ),
              const SizedBox(
                  height: 20), // Vertical space between Row and Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutScreen()),
                  );
                },
                child: const Text('Go to About'),
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
