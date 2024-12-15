import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:get/get.dart';
import 'app_translations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(), // Your translations
      locale: Locale('en', 'US'), // Default locale
      fallbackLocale: Locale('en', 'US'),

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
