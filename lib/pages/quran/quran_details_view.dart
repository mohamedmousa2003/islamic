import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/pages/quran/quran_screen.dart';

class QuranDetailsView extends StatefulWidget {
  static String routName = "QuranDetails";
  String? suraName;

  QuranDetailsView({this.suraName});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var theme = Theme.of(context);
    if (allVerses.isEmpty) readFile(args.index);
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
            margin: EdgeInsets.symmetric(
                horizontal: mediaQuery.width * 0.05,
                vertical: mediaQuery.height * 0.08),
            decoration: BoxDecoration(
              color: primaryLight.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "سورة ${args.suraName}",
                  style: theme.textTheme.titleLarge,
                ),
                Divider(
                  color: whiteColor,
                  thickness: 2.2,
                  indent: mediaQuery.width * 0.07,
                  endIndent: mediaQuery.width * 0.07,
                ),
                Expanded(
                  child: allVerses.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(
                            color: primaryLight,
                          ),
                        )
                      : ListView.builder(
                          itemCount: allVerses.length,
                          itemBuilder: (context, index) => Text(
                            "${allVerses[index]} ${index + 1}",
                            style: theme.textTheme.titleMedium,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                ),
              ],
            ),
          )),
    );
  }

  readFile(int index) async {
    String text = await rootBundle.loadString("assets/fiels/${index + 1}.txt");
    List<String> lines = text.split("\n");
    allVerses = lines;
    setState(() {});
  }
}
