import 'package:first_application/Buttons.dart';
import 'package:first_application/container_screen.dart';
import 'package:first_application/screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContainerScreen(), debugShowCheckedModeBanner: false);
  }
}
