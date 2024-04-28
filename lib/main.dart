import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/pages/hadeth/hadith_details_view.dart';
import 'package:islamic/pages/home_screen/home_screen.dart';
import 'package:islamic/pages/quran/quran_details_view.dart';
import 'package:islamic/pages/splach_screen.dart';
import 'package:islamic/pages/test.dart';
import 'package:islamic/providers/my_provider.dart';
import 'package:provider/provider.dart';

import 'core/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamic',
      theme: ThemeApplications.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.localeProvider),
      initialRoute: SplashMousa.routName,
      routes: {
        SplashMousa.routName: (context) => const Splash(),
        Splash.routName: (context) => const Splash(),
        Home.routeName: (context) => Home(),
        QuranDetailsView.routName: (context) => QuranDetailsView(),
        HadithDetailsView.routName: (context) => HadithDetailsView(),
        //TabView.routeName:(context) => TabView(),
      },
    );
  }
}