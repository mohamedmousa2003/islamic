import 'package:flutter/material.dart';
import 'package:islamic/pages/hadeth/hadeth_screen.dart';
import 'package:islamic/pages/quran/quran_screen.dart';
import 'package:islamic/pages/radio/radio_screen.dart';
import 'package:islamic/pages/setting/setting_screen.dart';

import '../../core/app_color.dart';
import '../sebha/sebha.dart';

class Home extends StatefulWidget {
  static String routeName = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> screen = [
    Setting(),
    Quran(),
    Hadeth(),
    RadioScreen(),
    Sebha(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Stack(
      children: [
        Image.asset("assets/images/background_light.png", fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islamic",
              style: theme.textTheme.titleLarge,
            ),
          ),
          body: screen.elementAt(selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: blackColor,
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
                  label: "Health"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "Sebiha"),
            ],
          ),
        ),
      ],
    );
  }
}
