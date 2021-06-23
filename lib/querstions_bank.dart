import 'questions.dart';

class QuizCircuit {
  int _questionNumber = 0;
  List<Questions> _questions = [
    Questions(fullQuestion: '১.সোনার তরী কি কাজী নজরুল ইসলাম লিখেছেন ?', answer: false),
    Questions(fullQuestion: '২. ১৯২২ সালে ১২ তারিখে কি ধুমকেতু কাজী নজরুল ইসলাম প্রকাশ করেছেন ?  ', answer: true),
    Questions(fullQuestion: '৩.নজরুলের বন্দী অবস্থায় থাকায় রবীন্দ্রনাথ ঠাকুর কি বসন্ত গীতিনাট্যটি লিখেন?', answer: true),
    Questions(fullQuestion: '৪.নজরুল কি ভাঙ্গার গান লিখেছেন?', answer: true),
    Questions(fullQuestion: '৫.কাজী নজরুল ইসলাম ছদ্মনাম কি ভানুসিংহ ঠাকুর?', answer: false),
    Questions(fullQuestion: '৬.চতুরঙ্গ কি কাজী নজরুল ইসলাম লিখেছেন? ', answer: false),
    Questions(fullQuestion: '৭.গীতাঞ্জলি কি কাব্যগ্রন্থ?', answer: true),
    Questions(fullQuestion: '৮.রবীন্দ্রনাথ ঠাকুর গীতাঞ্জলি কি ১৯১৩ সালে প্রকাশিত হয়?', answer: false),
    Questions(fullQuestion: '৯.রবীন্দ্রনাথ ঠাকুরের লিখা প্রথম ছোটগল্প কি ছুটি?', answer: false),
    Questions(fullQuestion: '১০.আত্মচরিত ঈশ্বরচন্দ্র বিদ্যা সাগরের আত্ন জীবনী?', answer: true),


  ];

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber <= _questions.length - 1) _questionNumber++;
  }

  bool isFinish() {
    if (_questionNumber == _questions.length-1) {
      return true;
    } else {
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}
