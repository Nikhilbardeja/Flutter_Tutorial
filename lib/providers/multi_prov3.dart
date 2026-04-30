import 'package:flutter/material.dart';

class MultiProv3 with ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}
