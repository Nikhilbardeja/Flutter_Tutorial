import 'package:first_application/navigation/first_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String title;
  const SecondScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen $title"),
        backgroundColor: Colors.amber,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FirstScreen();
                    },
                  ),
                );
              },
              child: Text("Go to FirstScreen"),
            ),
          ],
        ),
      ),
    );
  }
}
