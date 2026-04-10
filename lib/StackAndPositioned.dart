import 'package:flutter/material.dart';

class Stackandpositioned extends StatelessWidget {
  const Stackandpositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack and positioned"),
        backgroundColor: Colors.amber,
      ),

      body: Stack(
        children: [
          Positioned(
            child: Container(color: Colors.black, height: 200, width: 200),
          ),
          Container(color: Colors.red, height: 150, width: 150),
          Container(color: Colors.blue, height: 100, width: 100),
        ],
      ),
    );
  }
}
