import 'package:flutter/material.dart';
import '';

class MyRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theory of layout.'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,

          // Выравнивание по поперечной оси.
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ColorBox(),
            BiggerColorBox(),
            ColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.5, left: 5.5),
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.redAccent[100],
        border: Border.all(width: 4.5, color: Color(0xFF55ff55)),
        borderRadius: const BorderRadius.all(const Radius.circular(10.5)),
      ),
    );
  }
}
