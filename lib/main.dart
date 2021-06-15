import 'package:flutter/material.dart';
import 'package:quizzer/questions.dart';

void main() =>runApp(quiz());

class quiz extends StatelessWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyanAccent,
            title: Text("Quiz"),
          ),
          body: quizbody(),
        )
    );
  }
}



class quizbody extends StatefulWidget {
  const quizbody({Key? key}) : super(key: key);

  @override
  _quizbodyState createState() => _quizbodyState();
}

class _quizbodyState extends State<quizbody> {

  List<Icon> scorekeeper=[
    Icon(Icons.close_sharp,color: Colors.redAccent,),
    Icon(Icons.done_sharp,color: Colors.lightGreen,)
  ];

  // List<String> questions =['Some cats are actually allergic to humans',
  //   '1','2','3'
  // ];
  List<Questions> questions=[
    Questions(fullQuestion:'d',answer:true),
    Questions(fullQuestion:'e',answer:false),
    Questions(fullQuestion:'f',answer:false),
    Questions(fullQuestion:'g',answer:true),
  ];
  // Questions q1 =new Questions(fullQuestion:"Some cats are actually allergic to humans",answer:false);

  // List<bool> questionAnswer=[false,true] ;
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Center(
                  child: Text(questions[questionNumber].fullQuestion,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  )
              ),
            )
        ),
        Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(20,0,20,0),
              color: Colors.green,
              child: TextButton(
                child: Text('True',
                  style: TextStyle(color: Colors.white,fontSize: 35),
                ),
                onPressed: () {
                  bool correctAnswer =questionAnswer[questionNumber] ;
                  if(correctAnswer==true){
                    print("user got right answer");
                  }else
                    {
                      print("user got wrong answer");
                    }
                  setState(() {
                    questionNumber=questionNumber+1;
                  });
                },

              ),
            ) ),
        SizedBox(height:6),
        Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(20,0,20,0),
              color: Colors.red,
              child: TextButton(
                child: Text('False',
                  style: TextStyle(color: Colors.white,fontSize: 35),
                ),
                onPressed: () {
                  questionNumber=questionNumber+1;
                },
              ),
            ) ),
        Row(children: scorekeeper)
      ],
    );
  }
}


