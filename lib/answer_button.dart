import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() onTap;
  const AnswerButton({super.key, required this.onTap, required this.answer});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 55, vertical: 7),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 200, 24, 83),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      child: Text(
        textAlign: .center,
        answer,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
      ),
    );
  }
}
