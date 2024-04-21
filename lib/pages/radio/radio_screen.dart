import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/radio_image.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/Icon metro-next.png"),
                Image.asset("assets/images/Icon awesome-play.png"),
                Image.asset("assets/images/Icon metro_left-next.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
