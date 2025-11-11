import 'package:flutter/material.dart';

const Locale arabicLocale =  Locale('ar')  ;
const Locale englishLocale =  Locale('en')  ;
List<Locale> supportedLocales = const [arabicLocale, englishLocale];

// flutter pub run easy_localization:generate -S assets/lang -O lib/core/languages -f keys -o locale_keys.g.dart
