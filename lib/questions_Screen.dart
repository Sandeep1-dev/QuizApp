import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text("Question is Here"),
          SizedBox(height: 20),
          AnswerButton('answer1'),
          AnswerButton('answer2'),
          AnswerButton('answer3'),
          AnswerButton('answer4'),
        ],
      ),
    );
  }
}
