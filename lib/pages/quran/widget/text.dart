import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  String text;

  TextTitle({required this.text});

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
