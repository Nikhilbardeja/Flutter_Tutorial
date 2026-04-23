import 'package:first_application/navigation/routes_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RoutesScreen();
                },
              ),
            );
          },
          child: Text("Get Started"),
        ),
      ),
    );
  }
}
