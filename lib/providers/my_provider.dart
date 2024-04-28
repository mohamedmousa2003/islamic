import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String localeProvider = "ar";
  ThemeMode appColor = ThemeMode.dark;

  // this function responsible to change the language
  changeLanguage(String language) {
    if (localeProvider == language) {
      return;
    }
    localeProvider = language;
    notifyListeners();
  }

  changeColors(ThemeMode newColor) {
    if (appColor == newColor) return;
    appColor = newColor;
    notifyListeners();
  }

  bool isDark() {
    return appColor == ThemeMode.dark;
  }

  String backgroundImage() {
    return isDark()
        ? "assets/images/bg.png"
        : "assets/images/background_light.png";
  }
}
