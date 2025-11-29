import 'package:flutter/material.dart';
import 'package:quiz_app/homescreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 101, 163, 171),
                const Color.fromARGB(255, 30, 151, 151),
              ],
              end: .bottomRight,
              begin: .topLeft,
            ),
          ),
          child: HomeScreen(),
        ),
      ),
    );
  }
}
