import 'package:flutter/material.dart';

import '../../../core/app_color.dart';

class DividerHadith extends StatelessWidget {
  const DividerHadith({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Divider(
      height: 5,
      color: primaryLight,
      thickness: 2,
    );
  }
}
