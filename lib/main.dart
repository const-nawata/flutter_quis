import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() => runApp(BeginApp());

class BeginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App of STL',

      theme: ThemeData(primarySwatch: Colors.lightGreen),

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
    return Row(
      children: <Widget>[
        Container(
          child: IconButton(
            icon: (_isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
            onPressed: _toggleFavorite,
            color: Colors.red[500],
          ),
        ),
        SizedBox(
          width: 40,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite(){
    setState(() {
      if(_isFavorite){
        _isFavorite = false;
        _favoriteCount -= 1;
      }else{
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }
}

class PersonWidget extends StatelessWidget {
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
                    child: _buildRating(),
                  ),
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: _buildAction(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: _buildDesc(),
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

  Widget _buildRating() => ListTile(
        title: Text(
          'Bond the best',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
        subtitle: Text(
          'Lives in Chernivtsi',
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FavoriteWidget(),
          ],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButton('Epanjol', Icons.lock, Colors.black),
          _buildButton('68 sm', Icons.star, Colors.black),
          _buildButton('34 kg', Icons.pets, Colors.black),
        ],
      );

  Widget _buildButton(String label, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(icon, color: Colors.black),
          Container(
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.w400, color: color),
            ),
          ),
        ],
      );

  Widget _buildDesc() => Text(
    'T-bone bresaola leberkas sausage, corned beef pork belly tri-tip filet mignon drumstick salami prosciutto kielbasa frankfurter pig.'
    'Pancetta rump buffalo meatball andouille ground round fatback tongue. Short ribs biltong cow ham hock. '
    'Burgdoggen venison ground round flank meatloaf jerky buffalo. Turkey short ribs bresaola andouille frankfurter tongue chicken biltong boudin beef ribs.'
    'Kielbasa rump corned beef sirloin, ham jerky pork belly chislic biltong. Chislic shank tail shoulder landjaeger, '
    'rump sirloin burgdoggen buffalo beef ribs cow corned beef doner sausage chuck.',

    softWrap: true,
    style: TextStyle(fontSize: 16.0),
  );
}
