import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.correctAnswer, this.questionIndex, {super.key});
  final int questionIndex;
  final bool correctAnswer;
  @override
  Widget build(context) {
    var questionNO = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: correctAnswer ? const Color.fromARGB(255, 142, 87, 69) :const Color.fromARGB(255, 243, 103, 33),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNO.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
