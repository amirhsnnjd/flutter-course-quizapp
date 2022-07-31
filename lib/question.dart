import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  var Questiontext;
  Question(this.Questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Text(
        Questiontext,
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
