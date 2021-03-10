import 'package:flutter/material.dart';
import 'my_container.dart';
import 'row_coolumn.dart';

void main() {
  return runApp(StartApp());
}

/*
  Во flutter все состоит из виджетов.
  Виджеты описывают, как должен выглядеть UI приложения.
  Виджет -- это обычный класс наследуемый от одного из двух классов:
    - StatelessWidget
    - StatefulWidget

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
      theme: ThemeData(primarySwatch: Colors.amber),
      // home: HomePage(),
      // home: MyContainer(),
      home: MyRowColumn(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First project'),
      ),
      body: Container(
        // Аналог <div></div>
        child: Center(
          child: Text('Body container.'),
        ),
      ),
    );
  }
}
