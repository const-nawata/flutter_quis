import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theory of Container.'),
      ),
      body: Container(
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
    );
  }

/*

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theory of Container.'),
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        // alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.deepOrange[200],

        child: Text('Dummy text of my container.', textAlign: TextAlign.center,),
      ),
    );
  }
*/

// @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Theory of Container.'),
  //     ),
  //     body: Center(
  //       child: Container(
  //         decoration: BoxDecoration(
  //           color: Colors.amber[600],
  //           // shape: BoxShape.circle,
  //           border: Border.all(),
  //         ),
  //         alignment: Alignment.center,
  //         // width: 300,
  //         // height: 300,
  //         margin: const EdgeInsets.only(top: 100),
  //         padding: const EdgeInsets.all(0.0),
  //         child: Text('codeandart'),
  //       ),
  //     ),
  //   );
  // }

}
