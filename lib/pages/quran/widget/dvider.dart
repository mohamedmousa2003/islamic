import 'package:flutter/material.dart';

import '../../../core/app_color.dart';

class DividerLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: primaryLight,
      thickness: 2,
      height: 0,
      endIndent: MediaQuery.of(context).size.width * 0.1,
      indent: MediaQuery.of(context).size.width * 0.04,
    );
  }
}
