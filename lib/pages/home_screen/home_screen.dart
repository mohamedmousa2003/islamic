import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String routeName = "home";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/light_images/background.png"),
        ),
      ),
      child: Scaffold(),
    );
  }
}
