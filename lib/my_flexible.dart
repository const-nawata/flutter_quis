// import 'dart:html';
import 'dart:io' as io;


import 'package:flutter/material.dart';

final  myFile = new io.File('lib/Bond_0003.jpg');

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theory of layout.'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(
              color: Colors.red[400],
              width: 50,
              child: Text('Dummy jtext.',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black54,
                ),
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            Icon(
              Icons.face,
              size: 50,
              color: Colors.brown[200],
            ),

            // Image.file(myFile),
            // BiggerColorBox(),


//File('E:\Storage\OneDrive\Media\Images\Обои\Bond\Bond-0003.jpg')

            // Flexible(fit: FlexFit.loose,
            //     flex: 1,
            //     child: ColorBox()
            // ),


            // Spacer(
            //   flex: 1,
            // ),


            // Flexible(fit: FlexFit.loose,
            //     flex: 1,
            //     child: ColorBox()),

            // SizedBox(
            //   width: 100,
            //   height: 100,
            //   child: ColorBox(
            //   ),
            // ),

            // Expanded(flex: 1,
            //     child: ColorBox()),




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
      // child: Text('123'),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}
