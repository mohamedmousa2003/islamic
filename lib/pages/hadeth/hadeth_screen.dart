import 'package:flutter/material.dart';
import 'package:islamic/pages/hadeth/hadith_details_view.dart';
import 'package:islamic/pages/hadeth/widget/Divider.dart';

class Hadeth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    String name = "الحديث رقم";
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          const DividerHadith(),
          Text(
            "الأحاديث",
            style: theme.textTheme.titleLarge,
          ),
          const DividerHadith(),
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