import 'package:flutter/material.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/pages/hadeth/hadeth_screen.dart';

class HadithDetailsView extends StatelessWidget {
  static String routName = "hadith";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadithDetails;
    // TODO: implement build
    return Stack(
      children: [
        Image.asset(
          "assets/images/background_light.png",
          fit: BoxFit.fill,
          height: mediaQuery.height,
          width: mediaQuery.width,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islamic",
              style: theme.textTheme.titleLarge,
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: mediaQuery.width * 0.05,
                vertical: mediaQuery.height * 0.08),
            decoration: BoxDecoration(
                color: primaryLight, borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "${args.name} ${args.index + 1}",
                  style: theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                Divider(
                  color: whiteColor,
                  thickness: 2,
                  height: 5,
                  indent: mediaQuery.width * 0.08,
                  endIndent: mediaQuery.width * 0.08,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
