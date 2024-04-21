import 'package:flutter/material.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/pages/quran/quran_screen.dart';

class QuranDetailsView extends StatelessWidget {
  static String routName = "QuranDetails";
  String? suraName;

  QuranDetailsView({this.suraName});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var theme = Theme.of(context);
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/background_light.png",
          ),
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Islamic",
              style: theme.textTheme.titleLarge,
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(
                top: mediaQuery.height * 0.07,
                left: mediaQuery.width * 0.07,
                right: mediaQuery.width * 0.07,
                bottom: mediaQuery.height * 0.1),
            height: mediaQuery.height,
            width: mediaQuery.width,
            decoration: BoxDecoration(
              color: primaryLight.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  args.suraName,
                  style: theme.textTheme.titleLarge,
                ),
                Divider(
                  color: whiteColor,
                  thickness: 2.2,
                  indent: mediaQuery.width * 0.07,
                  endIndent: mediaQuery.width * 0.07,
                )
              ],
            ),
          )),
    );
  }
}
