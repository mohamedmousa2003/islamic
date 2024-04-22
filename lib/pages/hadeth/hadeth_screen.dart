import 'package:flutter/material.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/pages/hadeth/hadith_details_view.dart';

class Hadeth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    String name = "الحديث رقم";
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            height: 2,
            color: primaryLight,
            thickness: 2,
          ),
          Text(
            "الأحاديث",
            style: theme.textTheme.titleLarge,
          ),
          Divider(
            height: 5,
            color: primaryLight,
            thickness: 2,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(6),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadithDetailsView.routName,
                          arguments: HadithDetails(name: name, index: index));
                    },
                    child: Text(
                      "$name  ${index + 1} ",
                      style: theme.textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    )),
              );
            },
          ))
        ],
      ),
    );
  }
}

class HadithDetails {
  final String name;
  final int index;

  HadithDetails({required this.name, required this.index});
}