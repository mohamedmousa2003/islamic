import 'package:flutter/material.dart';

import 'app_color.dart';

class ThemeApplications {
  static ThemeData light = ThemeData(
      scaffoldBackgroundColor: transparentColor,
      appBarTheme: AppBarTheme(
        backgroundColor: transparentColor,
        elevation: 0,
        centerTitle: true,
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
      ));
}
