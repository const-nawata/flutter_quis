import 'package:flutter/material.dart';
// import 'package:flutter_quis/my_flexible.dart';
// import 'package:flutter_quis/row_coolumn.dart';
// import 'package:flutter_quis/my_container.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_quis/pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(StartApp());
}


/*
  Во flutter все состоит из виджетов.
  Виджеты описывают, как должен выглядеть UI приложения.
  Виджет -- это обычный класс наследуемый от одного из двух классов:
    - StatelessWidget
    - StatefullWidget

  Каждый виджет имеет основной метод: "build", который строит и отрисовывает
виджет на экране.

* */

class StartApp extends StatelessWidget {
  @override // переопрдеделение методов. В данном случае "build".

  Widget build(BuildContext context) {
//     "context" содержит какую-то мета информацию о виджите, его положении в
//     дереве виджетов.

    return MaterialApp(
      // Основной виджет.
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      // home: MyContainer(),
      // home: MyFlex(),
      home: HomePage(),
    );
  }
}
