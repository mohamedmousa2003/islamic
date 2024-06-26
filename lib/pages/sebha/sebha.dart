import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/providers/my_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int value = 0;
  int index = 0;
  List<String> text = [
    "سُبْـحَانَ اللهِ",
    "اَلَحَمَدَ لَلَهَ",
    "لآ اِلَهَ اِلّا اللّهُ ",
    "الله أَكْبَرُ",
    "اسْتَغْفَرُ اللَّهَ",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                value++;
                if (value == 33) {
                  value = 0;
                  final player = Audio.load(
                      'assets/sound/mixkit-retro-game-notification-212.wav');
                  player.play();
                  if (text.length == index + 1) {
                    index = 0;
                    final player = Audio.load(
                        'assets/sound/mixkit-fast-small-sweep-transition-166.wav');
                    player.play();
                  } else {
                    index += 1;
                  }
                }
                setState(() {});
              },
              child: CircularPercentIndicator(
                radius: 80.0,
                lineWidth: 8.0,
                animationDuration: 5000,
                percent: value / 33,
                center: CircleAvatar(
                    backgroundColor:
                        provider.isDark() ? yellowColor : primaryLight,
                    radius: 60,
                    child: Text(text[index])),
                progressColor: provider.isDark() ? yellowColor : primaryLight,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$value",
                style: theme.textTheme.titleLarge,
              ),
              Text(
                "\tعدد التسبيحات",
                style: theme.textTheme.titleLarge,
              )
            ],
          ),
        ],
      ),
    );
  }
}
