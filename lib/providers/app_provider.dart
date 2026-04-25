import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  ThemeMode mode = ThemeMode.light;
  IconData icon = Icons.dark_mode;

  void swithTheme() {
    if (mode == ThemeMode.dark) {
      mode = ThemeMode.light;
      icon = Icons.dark_mode;
    } else {
      mode = ThemeMode.dark;
      icon = Icons.light_mode;
    }
    notifyListeners();
  }
}
