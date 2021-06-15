import 'questions.dart';

class QuizCircuit{
  List<Questions> _questions=[
    Questions(fullQuestion:'d',answer:true),
    Questions(fullQuestion:'e',answer:false),
    Questions(fullQuestion:'f',answer:false),
    Questions(fullQuestion:'g',answer:true),
  ];

  String getQuestionText(int questionNumber){
    return _questions[questionNumber].questionText;
  }

}

