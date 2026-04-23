import 'package:first_application/navigation/profile_screen.dart';
import 'package:first_application/navigation/settings_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
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
                      return ProfileScreen(name: "Nacho re");
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
                      return SettingsScreen(name: "Raju", age: 50);
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
