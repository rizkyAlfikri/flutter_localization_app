import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localization_app/l10n/l10n.dart';
import 'package:flutter_localization_app/provider/language_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguageProvider(),
        builder: (context, child) {
          return MaterialApp(
              title: 'Flutter Localization App',
              locale: Provider.of<LanguageProvider>(context).locale,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: [
                AppLocalizations.delegate, //
                GlobalMaterialLocalizations
                    .delegate, // support localization string for Material Widget
                GlobalCupertinoLocalizations
                    .delegate, // support localization string for Cupertino Widget
                GlobalWidgetsLocalizations
                    .delegate // support localization string for text format from right to left. exp :arab text
              ],
              supportedLocales: L10n.all,
              theme: ThemeData(primarySwatch: Colors.blue),
              home: HomePage());
        });
  }
}
