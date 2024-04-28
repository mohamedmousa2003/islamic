import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/pages/setting/language_bottom.dart';
import 'package:islamic/pages/setting/themeModel_bottom.dart';
import 'package:islamic/providers/my_provider.dart';
import 'package:provider/provider.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool selectValue = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var locale = AppLocalizations.of(context)!;
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            locale.language,
            style: theme.textTheme.bodyLarge,
          ),
          builder(index: 0, locale: locale.arabic),
          Text(
            locale.theme_mode,
            style: theme.textTheme.bodyLarge,
          ),
          builder(index: 1, locale: locale.light),
        ],
      ),
    );
  }

  builder({required String locale, required int index}) {
    return InkWell(
      onTap: () {
        index == 0
            ? builderShowModalBottomSheetLanguage()
            : builderShowModalBottomSheetTheme();
        setState(() {});
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: primaryLight, width: 3, strokeAlign: 5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              locale,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Icon(Icons.arrow_downward)
          ],
        ),
      ),
    );
  }

  builderShowModalBottomSheetLanguage() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottom(),
    );
  }

  builderShowModalBottomSheetTheme() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeModelBottom(),
    );
  }
}
