import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function() startQuiz; // initiating the function

  const HomeScreen(this.startQuiz, {super.key});

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
              textAlign: .center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                backgroundColor: const Color.fromARGB(255, 200, 24, 83),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              icon: Icon(Icons.arrow_forward),
              onPressed: startQuiz,
              label: Text('Start Quiz', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
