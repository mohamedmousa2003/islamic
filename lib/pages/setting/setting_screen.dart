import 'package:flutter/material.dart';
import 'package:islamic/core/app_color.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool selectValue = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Dark mode",
          style: theme.textTheme.titleLarge,
        ),
        Switch(
          activeColor: primaryLight,
          inactiveThumbColor: whiteColor,
          value: selectValue,
          onChanged: (value) {
            selectValue = value;
            setState(() {});
          },
        )
      ],
    ));
  }
}
