import 'package:flutter/material.dart';
import 'package:islamic/pages/hadeth/hadith_details_view.dart';
import 'package:islamic/pages/home_screen/home_screen.dart';
import 'package:islamic/pages/quran/quran_details_view.dart';
import 'package:islamic/pages/splach_screen.dart';

import 'core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamic',
      theme: ThemeApplications.light,
      initialRoute: Splash.routName,
      routes: {
        Splash.routName: (context) => const Splash(),
        Home.routeName: (context) => Home(),
        QuranDetailsView.routName: (context) => QuranDetailsView(),
        HadithDetailsView.routName: (context) => HadithDetailsView(),
        //Test.routeName:(context) => Test(),
      },
    );
  }
}