import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  bool _isDarkMode = false;
  Color _primaryColor = Colors.grey;
  Color _secondaryColor = Colors.blue;

  bool get isDarkMode => _isDarkMode;
  Color get primaryColor => _primaryColor;
  Color get secondaryColor => _secondaryColor;

  void setIsDarkMode(bool value) {
    _isDarkMode = value;

    // Business Logic
    _primaryColor = (_isDarkMode) ? Colors.brown : Colors.grey;
    _secondaryColor = (_isDarkMode) ? Colors.lightGreen : Colors.blue;

    notifyListeners();
  }

  Bloc() {}
}
