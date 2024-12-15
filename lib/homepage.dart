import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_translations.dart'; // Ensure this file contains your translations

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Initialize LocaleController
  final LocaleController localeController = Get.put(LocaleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('language'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Dropdown menu for language selection
            Obx(
                  () {
                return DropdownButton<String>(
                  value: localeController.currentLocale.value.languageCode,
                  items: [
                    DropdownMenuItem(
                      child: Text('Bangla'),
                      value: 'bn', // Fixed language code
                    ),
                    DropdownMenuItem(
                      child: Text('English'),
                      value: 'en',
                    ),
                    DropdownMenuItem(
                      child: Text('arabic'),
                      value: 'ar',
                    ),
                  ],
                  onChanged: (value) {
                    if (value == 'en') {
                      localeController.updateLocale('en', 'US');
                    } else if (value == 'bn') {
                      localeController.updateLocale('bn', 'BD');
                    }
                    else if (value == 'ar') {
                      localeController.updateLocale('ar', 'SA');
                    }
                  },
                );
              },
            ),
           Column(
                  children: [
                    Text(
                      'hello'.tr, // Translation for "hello"
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      'language'.tr, // Translation for "language"
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                )


            // Text widgets to show translated content

          ],
        ),
      ),
    );
  }
}

// Locale Controller
class LocaleController extends GetxController {
  var currentLocale = const Locale('en', 'US').obs;

  void updateLocale(String languageCode, String countryCode) {
    var newLocale = Locale(languageCode, countryCode);
    currentLocale.value = newLocale;
    Get.updateLocale(newLocale);
  }
}
