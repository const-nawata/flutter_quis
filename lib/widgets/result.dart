import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';

    if (0 <= count && count <= 3) {
      msg = 'Dark side';
    } else if (4 <= count && count <= 7) {
      msg = 'Almost aim.';
    } else {
      msg = 'Aim was reached.';
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000),
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(
              2.0,
              5.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
/*
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
*/

          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Color(0xFFffffff),
          ),
          Text('Number of correct answers is $count from $total'),
          Divider(
            color: Color(0xFFffffff),
          ),
          // TextButton(onPressed: onClearState, child: Text('Pass once more')), // If onPressed function has no input parameters.
          TextButton(
              onPressed: () => onClearState(2),
              child: Text(
                  'Pass once more',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              )
          ),
        ],
      ),
    );
  }
}
