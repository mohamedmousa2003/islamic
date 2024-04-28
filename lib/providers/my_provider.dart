import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String localeProvider = "ar";

  // this function responsible to change the language
  changeLanguage(String language) {
    if (localeProvider == language) {
      return;
    }
    localeProvider = language;
    notifyListeners();
  }
}
