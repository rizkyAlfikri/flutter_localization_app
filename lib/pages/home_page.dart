import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localization_app/widgets/language_flag_widget.dart';
import 'package:flutter_localization_app/widgets/languages_picker_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.title ?? ''),
        centerTitle: true,
        leading: LanguageFlagWidget(),
        actions: [LanguagePickerWidget()],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          FlutterLogo(
            size: 100.0,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            AppLocalizations.of(context)?.greeting('Alfi') ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            width: double.infinity,
            child: Text(
              AppLocalizations.of(context)?.invitation_message ?? 'Hi',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
