import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  var st;
  List<Map<String, Object>> question;
  final Function buttonpressed;

  Quiz(this.st, this.question, this.buttonpressed);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(question[st]['questions']),
      ...(question[st]['answers'] as List<Map<String, Object>>).map((txt) {
        return Answer(() => buttonpressed(txt['score']), txt['text']);
      })
    ]);
  }
}
