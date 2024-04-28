import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeModelBottom extends StatelessWidget {
  const ThemeModelBottom({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var locale = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        color: primaryLight,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    locale.light,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: provider.localeProvider == ""
                          ? primaryLight
                          : blackColor,
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 50,
          ),
          Text(
            locale.dark,
            style: theme.textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
