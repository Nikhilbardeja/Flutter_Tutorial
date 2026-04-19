import 'package:first_application/OtherWidgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OtherWidgets(),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.dark().copyWith(),
      // dartTheme: ThemeData(
      //  define your settings for dark theme
      // )
      // themeMode: ThemeMode.system,
      //   theme: ThemeData(
      //     primaryColor: Colors.amber,

      //     elevatedButtonTheme: ElevatedButtonThemeData(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.amber,
      //         foregroundColor: Colors.white,
      //       ),
      //     ),

      //     textTheme: TextTheme(displayLarge: TextStyle(fontSize: 200)),
      //     iconTheme: IconThemeData(color: Colors.red, size: 50),
      //     appBarTheme: AppBarTheme(
      //       backgroundColor: Colors.red,
      //       centerTitle: true,
      //       iconTheme: IconThemeData(color: Colors.white),
      //     ),
      //     // scaffoldBackgroundColor: Colors.black,
      //   ),
    );
  }
}
