import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var st = 0;
  var question = [
    {'questions' : 'what\'s your favorite color?' ,
    'answers' : ['blue' , 'red' , 'yellow' , 'black']},
    {'questions' : 'what\'s your favorite team?' ,
    'answers' : ['a' , 'b' , 'c' , 'd']},
  ];
  void buttonpressed() {
    setState(() {
      st = st + 1;
    });
    print(st);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Column(children: [
          Question(question[st]['questions']),
          ...(question[st]['answers'] as List<String> ).map((txt)
          {
              return Answer(buttonpressed, txt);
          })
        ]),
      ),
    );
  }
}
