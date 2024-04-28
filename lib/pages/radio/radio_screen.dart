import 'package:flutter/material.dart';
import 'package:islamic/providers/my_provider.dart';
import 'package:provider/provider.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
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
