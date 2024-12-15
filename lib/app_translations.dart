import 'dart:ui';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'package:get/get.dart';
class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Welcome!',
      'language': 'English language',
    },
    'ar_SA': {
      'hello': 'مرحباً',
      'language': 'اللغة العربية',
    },
    'bn_BD': {
    'hello': 'স্বাগতম',
    'language': 'বাংলা ভাষা ',
  },
  };
}


