import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class ChangeLanguages extends StatefulWidget {
  const ChangeLanguages({super.key});

  @override
  State<ChangeLanguages> createState() => _ChangeLanguagesState();
}

class _ChangeLanguagesState extends State<ChangeLanguages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text('Getx Language'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: text('message'.tr),
              subtitle: text('name'.tr),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: text('English'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('hd', 'IN'));
                  },
                  child: text('Hindi'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('gu', 'IN'));
                  },
                  child: text('Gujarati'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
