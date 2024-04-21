import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  String text;
  int index;

  TextTitle({required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    // TODO: implement build
    return Expanded(
      child: Text(
        text,
        style: theme.textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
