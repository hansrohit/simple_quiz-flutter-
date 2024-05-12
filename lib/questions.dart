import 'package:basic3/AnswerButton.dart';
import 'package:flutter/material.dart';
import 'package:basic3/data/ques.dart';
//import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question(this.onSelected,{super.key});
  final void Function(String answer1) onSelected;
  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  var quesIndex = 0;
  void changeIndex(String clickedAnswer) {
    widget.onSelected(clickedAnswer);
    setState(() {
      quesIndex++;
    });
  }

  @override
  Widget build(context) {
    var currentquestion = questions[quesIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.question,
              style: //GoogleFonts.lato
              const TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            ...currentquestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answer,
                () {
                  changeIndex(answer);
                }
                
              );
            }),
          ],
        ),
      ),
    );
  }
}
