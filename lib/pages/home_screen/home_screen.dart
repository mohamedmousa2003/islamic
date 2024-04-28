import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/pages/hadeth/hadeth_screen.dart';
import 'package:islamic/pages/quran/quran_screen.dart';
import 'package:islamic/pages/radio/radio_screen.dart';
import 'package:islamic/pages/setting/setting_screen.dart';
import 'package:islamic/providers/my_provider.dart';
import 'package:provider/provider.dart';

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
    var mediaQuery = MediaQuery.of(context).size;
    var locale = AppLocalizations.of(context)!;
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.backgroundImage(),
          fit: BoxFit.fill,
          height: mediaQuery.height,
          width: mediaQuery.width,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              locale.islami,
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
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: locale.setting,
              ),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                  label: locale.quran),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/hadeth.png")),
                  label: locale.hadeth),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                  label: locale.radio),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: locale.tasbeh),
            ],
          ),
        ),
      ],
    );
  }
}
