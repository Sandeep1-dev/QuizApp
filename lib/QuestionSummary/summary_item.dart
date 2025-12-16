import 'package:flutter/material.dart';
import 'package:quiz_app/QuestionSummary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> itemData;
  const SummaryItem(this.itemData, {super.key});
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['User_Answers'] == itemData['Correct-Answers'];
    return Row(
      crossAxisAlignment: .start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['Question_index'] as int,
        ),

        SizedBox(width: 20),

        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                itemData['Question'] as String,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                itemData['User_Answers'] as String,
                style: TextStyle(color: Colors.deepPurple),
              ),
              SizedBox(height: 10),
              Text(
                itemData['Correct-Answers'] as String,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
