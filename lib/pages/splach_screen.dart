import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic/pages/home_screen/home_screen.dart';

class Splash extends StatelessWidget {
  static String routName = "splash";

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/light_images/splash.png"),
        ),
      ),
    );
  }
}