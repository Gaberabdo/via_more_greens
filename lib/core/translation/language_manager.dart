import 'package:flutter/material.dart';

enum LanguageType {
  english('en'),
  arabic('fn');

  const LanguageType(this.value);
  final String value;
}


const String assetPathLocalisations = 'assets/translations';

const Locale arabicLocal = Locale('ar', 'SA');
const Locale englishLocal = Locale('fn', 'FN');

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return value;
      case LanguageType.arabic:
        return value;
    }
  }
}