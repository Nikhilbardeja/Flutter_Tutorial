import 'package:first_application/navigation/home_screen.dart';
import 'package:first_application/navigation/profile_screen.dart';
import 'package:first_application/navigation/routes_screen.dart';
import 'package:first_application/navigation/settings_screen.dart';
import 'package:flutter/material.dart';

myRoutes() => {
  '/': (context) => RoutesScreen(),
  '/home': (context) => HomeScreen(),
};

myGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/profile':
      {
        String name = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) {
            return ProfileScreen(name: name);
          },
        );
      }

    case '/settings':
      {
        Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) =>
              SettingsScreen(name: data['name'], age: data['age']),
        );
      }
  }
}
