// ignore: file_names
import 'package:flutter/material.dart';
import 'package:basic3/data/ques.dart';
import 'package:basic3/summary/summary.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen({required this.chosenAnswers,required this.onrestart,super.key});
  final List<String> chosenAnswers;
  final void Function() onrestart;

  List<Map<String, Object>> getdatasummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].question,
          "correct_answer": questions[i].answers[0],
          "user_answer": chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final totalnumofquestions = questions.length;
    final summaryanswer = getdatasummary();
    final numofcorrectanswers = summaryanswer.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You Answered $numofcorrectanswers out of $totalnumofquestions Questions!",style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),),
            const SizedBox(height: 30),
            Summary(summaryanswer),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: onrestart,
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              icon: const Icon(Icons.refresh),
              label: const Text("Restart"),
            ),
          ],
        ),
      ),
    );
  }
}
