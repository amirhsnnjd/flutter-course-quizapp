import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;
  final VoidCallback fn;
  Result(this.score, this.fn);

  String txt(int score) {
    String x = '';
    switch (score) {
      case 0:
        return 'so bad';
        break;
      case 10:
        return 'not bad';

      default:
        return 'nice';
    }
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(txt(score)),
          ElevatedButton(onPressed: fn, child: Text('reset')),
        ],
      ),
    );
  }
}
