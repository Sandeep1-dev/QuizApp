import 'package:flutter/material.dart';
import 'package:quiz_app/data/Questions.dart';
import 'package:quiz_app/QuestionSummary/questions_summary.dart';

class ResultScreens extends StatelessWidget {
  final List<String> chosenAnswers;

  final void Function() onRestart;
  const ResultScreens({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  List<Map<String, Object>> get summaryData {
    //Getter method used by get keyword
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'Question_index': i,
        'Question': questions[i].text,
        'Correct-Answers': questions[i].answers[0],
        'User_Answers': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numofTotalQuestions = questions.length;
    final numofCorrectAnswers = summaryData
        .where((data) => data['User_Answers'] == data['Correct-Answers'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: .all(30),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              "You Answered $numofCorrectAnswers out of $numofTotalQuestions answered Correct",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            QuestionsSummary(summaryData),
            SizedBox(height: 20),
            TextButton.icon(
              style: TextButton.styleFrom(iconColor: Colors.pink, iconSize: 24),
              onPressed: onRestart,
              label: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 18, color: Colors.pink),
              ),
              icon: Icon(Icons.refresh_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
