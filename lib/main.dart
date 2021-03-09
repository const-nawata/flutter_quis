import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_quis/pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // переопрдеделение методов. В данном случае "build".

  Widget build(BuildContext context) {
    return MaterialApp(
      // Основной виджет.
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
        fontFamily: 'Georgia',
      ),

      home: HomePage(),
    );
  }
}
