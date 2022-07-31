import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Column(children: [
          Text('question ? '),
          Row(children: [
            RaisedButton( child: Text('ANSWER1'), onPressed: null),
          RaisedButton( child: Text('ANSWER2'), onPressed: null),
          RaisedButton( child: Text('ANSWER3'), onPressed: null),
          ],),
          RaisedButton( child: Text('answer1'), onPressed: null),
          RaisedButton( child: Text('answer2'), onPressed: null),
          RaisedButton( child: Text('answer3'), onPressed: null),
        

        ]),
      ),
    );
  }
}
