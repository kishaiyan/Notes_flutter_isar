import 'package:flutter/material.dart';
import 'package:notes_app/theme/theme.dart';

class Themeprovider extends ChangeNotifier {
  ThemeData _themedata = lightMode;

  ThemeData get themeData => _themedata;
  bool get isDarkMode => _themedata == darkmode;
  set themeData(ThemeData theme) {
    _themedata = theme;
    notifyListeners();
  }

  void toggle() {
    if (_themedata == lightMode) {
      themeData = darkmode;
    } else {
      themeData = lightMode;
    }
  }
}
