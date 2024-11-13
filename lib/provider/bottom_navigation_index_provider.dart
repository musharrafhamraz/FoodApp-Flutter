import 'package:flutter/material.dart';

class BottomNavigationIndexProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void setValueToZero() {
    _selectedIndex = 0;
    notifyListeners();
  }
}
