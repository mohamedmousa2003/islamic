import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/pages/hadeth/hadith_details_view.dart';
import 'package:islamic/pages/hadeth/widget/Divider.dart';

class Hadeth extends StatefulWidget {
  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<HadithDetails> allHadith = [];

  @override
  Widget build(BuildContext context) {
    if (allHadith.isEmpty) loadHadith();
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
                itemCount: allHadith.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(6),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadithDetailsView.routName,
                          arguments: HadithDetails(
                              name: allHadith[index].name,
                              content: allHadith[index].content));
                    },
                    child: Text(
                      allHadith[index].name,
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

  void loadHadith() async {
    String text = await rootBundle.loadString("assets/fiels/ahadeth.txt");
    List<String> hadithList = text.split("#\r\n");
    for (int i = 0; i < hadithList.length; i++) {
      List<String> hadithLines = hadithList[i].split("\n");
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      // to take object of hadith
      HadithDetails hadith = HadithDetails(name: title, content: hadithLines);
      allHadith.add(hadith);
      setState(() {});
    }
  }
}

class HadithDetails {
  final String name;
  final List<String> content;

  HadithDetails({required this.name, required this.content});
}