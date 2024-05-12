import 'package:flutter/material.dart';
import 'package:basic3/summary/summary_item.dart';

class Summary extends StatelessWidget {
  const Summary(this.summarydata, {super.key});
  final List<Map<String, Object>> summarydata;
  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map(
            (data) {
              //below!
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
// Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
                  
//                   Text(((data["question_index"] as int) + 1).toString()),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Text(data["question"] as String),
//                         const SizedBox(height: 5),
//                         Text(data["user_answer"] as String),
//                         Text(data["correct_answer"] as String),
//                       ],
//                     ),
//                   ),
//                 ],
//               );

