import 'package:first_application/AppThemeScreen.dart';
import 'package:first_application/BottomNavScreen.dart';
import 'package:first_application/GridViewScreen.dart';
import 'package:first_application/ListViewAndListTile.dart';
import 'package:first_application/NavigationDrawerScreen.dart';
import 'package:first_application/ResponsiveLayout.dart';
import 'package:first_application/StackAndPositioned.dart';
import 'package:first_application/projects/LoginForm.dart';
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
      home: Appthemescreen(),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.dark().copyWith(),
      // dartTheme: ThemeData(
      //  define your settings for dark theme
      // )
      // themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: Colors.amber,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
          ),
        ),

        textTheme: TextTheme(displayLarge: TextStyle(fontSize: 200)),
        iconTheme: IconThemeData(color: Colors.red, size: 50),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        // scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}
