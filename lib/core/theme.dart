import 'package:flutter/material.dart';

import 'app_color.dart';

class ThemeApplications {
  static bool isDark = true;
  static ThemeData themeLight = ThemeData(
    scaffoldBackgroundColor: transparentColor,
    appBarTheme: AppBarTheme(
      backgroundColor: transparentColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryLight,
        selectedItemColor: blackColor,
        unselectedItemColor: whiteColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: blackColor,
          size: 25,
        ),
        unselectedIconTheme: IconThemeData(color: whiteColor, size: 28)),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 27,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static ThemeData themeDark = ThemeData(
    scaffoldBackgroundColor: transparentColor,
    appBarTheme: AppBarTheme(
      backgroundColor: transparentColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryDark,
        selectedItemColor: yellowColor,
        unselectedItemColor: whiteColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: yellowColor,
          size: 25,
        ),
        unselectedIconTheme: IconThemeData(color: whiteColor, size: 28)),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: whiteColor),
      titleMedium: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: whiteColor),
      bodyLarge: TextStyle(
          fontSize: 27, fontWeight: FontWeight.bold, color: whiteColor),
    ),
  );
}
