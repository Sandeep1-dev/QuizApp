import 'package:flutter/material.dart';
import 'package:quiz_app/data/Questions.dart';
import 'package:quiz_app/homescreen.dart';
import 'package:quiz_app/questions_Screen.dart';
import 'package:quiz_app/resultscreens.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  var activeScreen = 'Home-Screen';

  // Widget? activeScreen;

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(switchScreen);
    if (activeScreen == 'Question-Screen') {
      screenWidget = QuestionsScreen(onSelectedAnswer: chooseAnswers);
    }

    if (activeScreen == 'Result-Screen') {
      screenWidget = ResultScreens(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

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
          child: screenWidget,
        ),
      ),
    );
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'Result-Screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = 'Question-Screen';
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }
}
