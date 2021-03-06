import 'package:flutter/material.dart';

main() => runApp(BeginApp());

class BeginApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App of STL',

      theme: ThemeData(
          primarySwatch: Colors.lightGreen
      ),

      // theme: ThemeData(primarySwatch: Colors.brown),

      home: PersonWidget(),
    );
  }
}

// class FavoriteWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 124;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Dummy temp text.'),
    );
  }
}



class PersonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites Testing'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
    children: [
      _buildTopImage(),
      Center(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(5),
                child: Text('Rating'),
              ),
              Card(
                elevation: 5,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Text('Buttons'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: Text('Description'),
              ),
            ],
          ),
        ),
      ),
    ],
  );

  Widget _buildTopImage() => Container(
    child: Card(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      elevation: 5,
      child: Image.asset(
        'asserts/images/Bond0003.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}