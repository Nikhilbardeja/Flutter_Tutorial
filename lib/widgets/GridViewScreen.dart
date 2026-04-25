import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),

      // body: GridView(
      //   padding: EdgeInsets.all(25),
      //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   //   crossAxisCount: 5,
      //   //   crossAxisSpacing: 10,
      //   //   mainAxisSpacing: 10,
      //   // ),
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 300,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      // children: [
      //   Image.asset("assets/images/image.jpeg"),
      //   Image.asset("assets/images/image.jpeg"),
      // ]
      // )
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
          Image.asset("assets/images/image.jpeg"),
        ],
      ),
    );
  }
}
