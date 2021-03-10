import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  // const MyContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theory of Container. R'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(
                        'https://www.d.umn.edu/~hrallis/guides/SampleImages/IceGrassClose.jpg')
                    .image,
                fit: BoxFit.cover, // Скругленные края рисунка.
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(
                        'https://www.d.umn.edu/~hrallis/guides/SampleImages/IceGrassClose.jpg')
                    .image,
                fit: BoxFit.cover, // Скругленные края рисунка.
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
