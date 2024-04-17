import 'package:flutter/material.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/pages/quran/widget/dvider.dart';
import 'package:islamic/pages/quran/widget/text.dart';

class Quran extends StatelessWidget {
  List<String> name = [
    "Ali",
    "Ahmed",
    "Mohamed",
    "Ali",
    "Ahmed",
    "Mohamed",
    "Ali",
    "Ahmed",
    "Mohamed",
    "Ali",
    "Ahmed",
    "Mohamed",
    "Ali",
    "Ahmed",
    "Mohamed",
    "Ali",
    "Ahmed",
    "Mohamed",
    "Ali",
    "Ahmed",
    "Mohamed",
    "Ali",
    "Ahmed",
    "Mohamed",
    "Ali",
    "Ahmed",
    "Mohamed",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        body: Column(
      children: [
        Image.asset("assets/images/quran_image.png"),
        DividerLine(),
        Row(
          children: [
            TextTitle(
              text: "Surah Name",
            ),
            Container(
              color: primaryLight,
              width: 3,
              height: 40,
            ),
            TextTitle(text: "Verses Number"),
          ],
        ),
        DividerLine(),
        Expanded(
            child: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                TextTitle(text: "${name[index]}"),
                Container(
                  color: primaryLight,
                  width: 3,
                  height: 40,
                ),
                TextTitle(text: "${index + 1}"),
              ],
            );
          },
        )),
      ],
    ));
  }
}

/*
Column(
        children: [
          Image.asset("assets/images/quran_image.png"),
          Divider(
            color: primaryLight,
            thickness: 3,
          ),
          Row(
            children: [
              Text("ccccc"),
              
            ],
          ),
        ],
      ),
   
*/