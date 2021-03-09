import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'file:///E:/src/apps/flutter_quis/lib/pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(StartApp());
}

class StartApp extends StatelessWidget {
  @override // переопрдеделение методов. В данном случае "build".

  Widget build(BuildContext context) {
    return MaterialApp(
      // Основной виджет.
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}
