import 'package:flutter/material.dart';

class MultiProv2 with ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}
