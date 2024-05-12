import 'package:basic3/data/ques.dart';
import 'package:basic3/questions.dart';
import "package:flutter/material.dart";
import 'package:basic3/starter.dart';
import 'package:basic3/resultScreen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
  class _QuizState extends State<Quiz>{

    List<String> selectedAnswer=[];
    var activeScreen = "start";

  //   @override
  // void initState() {
  //   activeScreen = "start"; 
  //   super.initState();
  // }
  void restart(){
    setState(() {
      selectedAnswer=[];
      activeScreen='question';
    },);
  }

   void chooseAnswer(String answer1){
      selectedAnswer.add(answer1);

      if(selectedAnswer.length == questions.length){
        setState(() {
        // selectedAnswer=[];
        activeScreen='result';
        });
      }
    }
   
    void switchScreen(){
      setState(() {
        activeScreen = "question";
      });
    } 

      @override
    Widget build(context){ 
        Widget value = Startup(switchScreen);

      if(activeScreen == "question"){
        value =  Question(chooseAnswer);
      }
      if(activeScreen=="result"){
        value =  ResultScreen(chosenAnswers:selectedAnswer,onrestart:restart);
      }

      return Container(
      color: const Color.fromARGB(255, 255, 224, 1),
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //        Color.fromARGB(255, 226, 208, 47),
      //        Color.fromARGB(255, 226, 208, 47),
      //     ],
      //     begin: Alignment.topLeft,
      //     end: AlignmentDirectional.bottomStart,
      //   ),
      // ),,
        //activeScreen == "start" ? Startup(switchScreen) : const Question(),
        child: value,
      );
    }
}

