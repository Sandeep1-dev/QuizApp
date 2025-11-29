import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisSize: .min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 280,
              color: const Color.fromARGB(167, 255, 255, 255),
            ),
            SizedBox(height: 40),
            Text(
              'Learn Flutter the Fun Way!!',
              style: TextStyle(fontSize: 19, color: Colors.black),
            ),
            SizedBox(height: 20),
            OutlinedButton.icon(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {},
              label: Text(
                'Start Quiz',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
