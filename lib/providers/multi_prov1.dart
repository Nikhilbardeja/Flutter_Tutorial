import 'package:flutter/material.dart';

class MultiProv1 with ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}
