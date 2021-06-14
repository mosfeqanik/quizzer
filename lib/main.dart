import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
            title: Text("Quiz"),
        ),
        body: quizbody(),
      )
    )
  );
}

class quizbody extends StatelessWidget {
  const quizbody({Key? key}) : super(key: key);

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
                  child: Text('this is question area',
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
                  print("hello bro");
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
                    print("hello bro");
                },
                ),
              ) ),
        Row(children: [
          Icon(Icons.highlight_off,color: Colors.redAccent,),
          Icon(Icons.spellcheck,color: Colors.lightGreen,)
        ],)
      ],
    );
  }
}
