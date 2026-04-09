import 'package:first_application/ListViewAndListTile.dart';
import 'package:first_application/ResponsiveLayout.dart';
import 'package:first_application/row_column.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Responsivelayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
