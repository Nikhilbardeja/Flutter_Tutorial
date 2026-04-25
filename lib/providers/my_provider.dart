import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  int count = 0;

  void increment(int a) {
    count++;
    notifyListeners();
  }
}
