import 'package:flutter/material.dart';

class SplashMousa extends StatelessWidget {
  static String routName = "Spalsh";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          "assets/mousa.jpeg",
        ),
      )),
    );
  }
}
