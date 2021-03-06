import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless W-Project'),
      ),
      body: Container(
        // Аналог <div></div>
        child: Center(
          child: Text('Dummy text edited.'),
        ),
      ),
    );
  }
}