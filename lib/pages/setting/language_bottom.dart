import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/providers/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottom extends StatefulWidget {
  @override
  State<LanguageBottom> createState() => _LanguageBottomState();
}

class _LanguageBottomState extends State<LanguageBottom> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage("en");
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    locale.english,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: provider.localeProvider == "en"
                          ? primaryLight
                          : blackColor,
                    ),
                  ),
                  provider.localeProvider == "en"
                      ? Icon(
                          Icons.done,
                          color: primaryLight,
                        )
                      : const SizedBox.shrink(),
                ],
              )),
          const SizedBox(
            height: 50,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    locale.arabic,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: provider.localeProvider == "ar"
                          ? primaryLight
                          : blackColor,
                    ),
                  ),
                  provider.localeProvider == "ar"
                      ? Icon(
                          Icons.done,
                          color: primaryLight,
                        )
                      : const SizedBox.shrink(),
                ],
              ))
        ],
      ),
    );
  }
}
