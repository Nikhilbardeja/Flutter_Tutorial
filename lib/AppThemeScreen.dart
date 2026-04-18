import 'package:flutter/material.dart';

class Appthemescreen extends StatelessWidget {
  const Appthemescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Theme Screen"),
        // backgroundColor: Theme.of(context).primaryColor,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Text(
              "Text",
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Button")),
            Icon(Icons.home),
          ],
        ),
      ),
    );
  }
}
