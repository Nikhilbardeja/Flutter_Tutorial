import 'package:first_application/navigation/second_screen.dart';
import 'package:first_application/navigation/third_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SecondScreen(title: "Nacho re");
                    },
                  ),
                );
              },
              child: Text("Go to SecondScreen"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ThirdScreen();
                    },
                  ),
                );
              },
              child: Text("Go to ThirdScreen"),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushReplacement(
            //       // completely destroy the current screen
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return ThirdScreen();
            //         },
            //       ),
            //     );
            //   },
            //   child: Text("Go to ThirdScreen"),
            // ),
          ],
        ),
      ),
    );
  }
}
