import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  get theme => _themeData;
  void ChangeTheme() {
    print("data here");
    final isDark = _themeData == ThemeData.dark();
    if (isDark) {
      _themeData = ThemeData.light();
    } else {
      _themeData = ThemeData.dark();
    }
    print("final");
    notifyListeners();
  }
}
