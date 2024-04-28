import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic/pages/home_screen/home_screen.dart';
import 'package:islamic/providers/my_provider.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  static String routName = "splash";

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var provider = Provider.of<MyProvider>(context);
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    return Scaffold(
        body: Image.asset(
      provider.isDark()
          ? "assets/images/dark_back.png"
          : "assets/images/splash.png",
      fit: BoxFit.fill,
      width: mediaQuery.width,
      height: mediaQuery.height,
    ));
  }
}