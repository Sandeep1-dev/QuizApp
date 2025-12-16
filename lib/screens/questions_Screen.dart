import 'package:flutter/material.dart';
import 'package:quiz_app/widget/answer_button.dart';
import 'package:quiz_app/data/Questions.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectedAnswer;

  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answeredQuestion(String selectedAnswer) {
    setState(() {
      widget.onSelectedAnswer(selectedAnswer);
      currentQuestionIndex++; //increment
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: .all(30),
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .stretch,
          children: [
            Text(
              textAlign: .center,
              currentQuestion.text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 30),
            ...currentQuestion.shuffledAnswers.map((answers) {
              return AnswerButton(
                onTap: () {
                  answeredQuestion(answers);
                },
                answer: answers,
              );
            }),
          ],
        ),
      ),
    );
  }
}
