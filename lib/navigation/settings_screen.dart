import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final String name;
  final int age;
  const SettingsScreen({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Screen"),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [
          ListTile(title: Text("Name"), subtitle: Text(name)),
          ListTile(title: Text("Age"), subtitle: Text(age.toString())),
        ],
      ),
    );
  }
}
