import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback fnc;
  var st;
  Answer(this.fnc, this.st);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: fnc,
      child: Text(st),
    );
  }
}
