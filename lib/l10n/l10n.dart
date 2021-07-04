import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('es'),
    const Locale('ja'),
    const Locale('ar'),
    const Locale('id')
  ];

  static String getFlag(String countryCode) {
    switch (countryCode) {
      case 'es':
        return '🇪🇸';
      case 'ja':
        return '🇯🇵';
      case 'ar':
        return '🇵🇸';
      case 'id':
        return '🇮🇩';
      default:
        return '🇺🇸';
    }
  }

  static String getCountryName(String countryCode) {
    switch (countryCode) {
      case 'es':
        return 'Spanyol';
      case 'ja':
        return 'Japan';
      case 'ar':
        return 'Palestine';
      case 'id':
        return 'Indonesia';
      default:
        return 'United States';
    }
  }
}
