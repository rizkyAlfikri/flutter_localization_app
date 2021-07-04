import 'package:flutter/material.dart';
import 'package:flutter_localization_app/l10n/l10n.dart';
import 'package:flutter_localization_app/provider/language_provider.dart';
import 'package:provider/provider.dart';

class LanguageFlagWidget extends StatelessWidget {
  const LanguageFlagWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, value, child) => Center(
        child: Text(
          L10n.getFlag(value.locale.languageCode),
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
