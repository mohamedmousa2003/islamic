import 'package:flutter/material.dart';
import 'package:islamic/pages/splach_screen.dart';

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
      initialRoute: Splash.routName,
      routes: {
        Splash.routName: (context)=> Splash(),
      },
    );
  }
}
