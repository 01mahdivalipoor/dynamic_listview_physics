import 'package:flutter/material.dart';

class ItemCounterProvider extends ChangeNotifier {
  int itemCount = 1;

  void increment() {
    itemCount++;
    notifyListeners();
  }

  void decrement() {
    itemCount == 0 ? itemCount = itemCount : itemCount--;
    notifyListeners();
  }
}
