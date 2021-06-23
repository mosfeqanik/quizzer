import 'package:flutter/material.dart';
import 'querstions_bank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(quiz());

class quiz extends StatelessWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int score=0;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("Quiz      score="),
      ),
      body: quizbody(),
    ));
  }
}

class quizbody extends StatefulWidget {
  const quizbody({Key? key}) : super(key: key);

  @override
  _quizbodyState createState() => _quizbodyState();
}

class _quizbodyState extends State<quizbody> {
  QuizCircuit Quizbrain = QuizCircuit();

  // score=0;
  List<Icon> scorekeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = Quizbrain.getCorrectAnswer();
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        scorekeeper.add(Icon(Icons.done_sharp, color: Colors.lightGreen));
        // score=score+1;
      } else {
        scorekeeper.add(Icon(Icons.close_sharp, color: Colors.redAccent));
      }
      if (Quizbrain.isFinish() == true) {
        Alert(
          context: context,
          title: "সমাপ্ত",
          desc: "আপনার কুইজটি শেষ হল",
        ).show();
        Quizbrain.reset();
        scorekeeper = [];
        // score=0;
      }
        Quizbrain.nextQuestion();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Center(
                  child: Text(
                Quizbrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              )),
            )),
        Expanded(
            child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: Colors.green,
          child: TextButton(
            child: Text(
              'সত্য',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            onPressed: () {
              checkAnswer(true);
            },
          ),
        )),
        SizedBox(height: 6),
        Expanded(
            child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: Colors.red,
          child: TextButton(
            child: Text(
              'মিথ্যা',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            onPressed: () {
              checkAnswer(false);
            },
          ),
        )),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}
