import 'package:flutter/material.dart';
import 'package:basic3/summary/question_identifer.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemdata, {super.key});
  final Map<String, Object> itemdata;
  @override
  Widget build(context) {
    final correctAnswer = itemdata["correct_answer"] == itemdata["user_answer"];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        QuestionIdentifier(correctAnswer, itemdata["question_index"] as int),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemdata["question"] as String,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemdata["user_answer"] as String,
                style: const TextStyle(color: Color.fromARGB(255, 243, 103, 33),fontWeight: FontWeight.w900),
              ),
              Text(
                itemdata["correct_answer"] as String,
                style:  const TextStyle(color: Color.fromARGB(255, 142, 87, 69),fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
