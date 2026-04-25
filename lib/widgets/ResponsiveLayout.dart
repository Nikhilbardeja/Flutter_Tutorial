import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {
  const Responsivelayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Layout"),
        backgroundColor: Colors.amber,
      ),

      //   body: Column(
      //     children: [
      //       Flexible(
      //         child: Container(color: Colors.red, height: 1000, width: 200),
      //       ),
      //     ],
      //   ),

      //   body: Row(
      //     children: [
      //       Expanded(
      //         flex: 1, //space ratio
      //         child: Container(color: Colors.red, width: 100),
      //       ), // does not follow width or height arguments
      //       Flexible(
      //         child: Container(color: Colors.black, width: 100),
      //       ), // allows to specify width and height and arguments
      //       //   Expanded(
      //       //     child: Container(color: Colors.blue, width: double.infinity),
      //       //   ),
      //       //   Expanded(
      //       //     child: Container(color: Colors.green, width: double.infinity),
      //       //   ),
      //       //   Expanded(
      //       //     child: Container(color: Colors.yellow, width: double.infinity),
      //       //   ),
      //     ],
      //   ),
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(flex: 2, child: Container(color: Colors.red, width: 200)),
          Spacer(flex: 2), // to make gap between and shift widgets at the edges
          Flexible(flex: 2, child: Container(color: Colors.black)),
        ],
      ),
    );
  }
}
