import 'package:flutter/material.dart';

void main() {
  runApp(const DueItApp());
}

class DueItApp extends StatelessWidget {
  const DueItApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Due-It!',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFFF88)),
      ),
      home: const HomeScreen(),
    );
  }
}

//Screen 1
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Due-It!'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome to Due-It!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Your personal task manager to help you stay organized and on top of your to-do list.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
