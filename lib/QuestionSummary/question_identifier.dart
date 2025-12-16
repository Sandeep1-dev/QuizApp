import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final bool isCorrectAnswer;

  final int questionIndex;
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    final int questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? Colors.deepPurple : Colors.deepOrange,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
