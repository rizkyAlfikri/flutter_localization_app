import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _locale = Locale('en');

  Locale get locale => _locale;

  void updateLanguage(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}
