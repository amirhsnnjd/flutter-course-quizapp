import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var st = 0;
  var _score = 0;
  var _question = [
    {
      'questions': 'what\'s your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'red', 'score': 0},
        {'text': 'yellow', 'score': 0},
        {'text': 'black', 'score': 0}
      ]
    },
    {
      'questions': 'what\'s your favorite team?',
      'answers': [
        {'text': 'a', 'score': 10},
        {'text': 'b', 'score': 0},
        {'text': 'c', 'score': 0},
        {'text': 'd', 'score': 0}
      ]
    },
  ];
  void _buttonpressed(int score) {
    setState(() {
      st = st + 1;
      _score += score;
    });
    print(st);
    print(_score);
  }

  void _reset() {
    setState(() {
      st = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('hello'),
          ),
          body: (st < _question.length)
              ? Quiz(st, _question, _buttonpressed)
              : Result(_score, _reset)),
    );
  }
}
