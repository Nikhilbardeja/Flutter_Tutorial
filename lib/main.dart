import 'package:first_application/alert_dialog_screen.dart';
import 'package:first_application/navigation/home_screen.dart';
import 'package:first_application/navigation/profile_screen.dart';
import 'package:first_application/navigation/routes_screen.dart';
import 'package:first_application/navigation/settings_screen.dart';
import 'package:first_application/popup_dropdown_menu.dart';
import 'package:first_application/tabs_screen.dart';
import 'package:first_application/utils/route_helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsScreen(),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: myRoutes(),
      // onGenerateRoute: (RouteSettings settings) => myGenerateRoutes(settings),

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
