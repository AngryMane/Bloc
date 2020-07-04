import 'package:flutter/material.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';

class Bloc {
  final _isDarkMode = BehaviorSubject<bool>();
  final _primaryColor = BehaviorSubject<Color>();
  final _secondaryColor = BehaviorSubject<Color>();

  // IsDarkMode
  StreamSink<bool> get theme => _isDarkMode.sink;
  Stream<bool> get onTheme => _isDarkMode.stream;

  // Primary Color
  StreamSink<Color> get primaryColor => _primaryColor.sink;
  Stream<Color> get onPrimaryColor => _primaryColor.stream;

  // Secondary Color
  StreamSink<Color> get secondaryColor => _secondaryColor.sink;
  Stream<Color> get onSecondaryColor => _secondaryColor.stream;

  Bloc() {
    theme.add(false);
    primaryColor.add(Colors.grey);
    secondaryColor.add(Colors.blue);

    // Business Logic
    _isDarkMode.stream.listen((isDarkMode) {
      primaryColor.add((isDarkMode) ? Colors.brown : Colors.grey);
      secondaryColor.add((isDarkMode) ? Colors.lightGreen : Colors.blue);
    });
  }
}
