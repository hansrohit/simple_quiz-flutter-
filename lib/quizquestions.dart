class QuizQuestions{
 const QuizQuestions(this.question,this.answers);
  final String question;
  final List<String> answers; 

 List<String> getShuffledAnswers(){
  final shuffledlist = List.of(answers);
  shuffledlist.shuffle();
  return shuffledlist;
  }
}