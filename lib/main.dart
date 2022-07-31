import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var st = 0;
  var question = [
    'what\'s your name',
    ' which animal do you love',
    'how you doing'
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
          Question(question[st]),
          ElevatedButton(child: Text('answer1'), onPressed: buttonpressed),
          ElevatedButton(child: Text('answer2'), onPressed: buttonpressed),
          ElevatedButton(child: Text('answer3'), onPressed: buttonpressed),
        ]),
      ),
    );
  }
}
