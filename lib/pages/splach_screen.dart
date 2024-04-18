import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic/pages/home_screen/home_screen.dart';

class Splash extends StatelessWidget {
  static String routName = "splash";
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    return Scaffold(
      body: Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.cover,
        width: mediaQuery.width,
        height: mediaQuery.height,
      ),
    );
  }
}