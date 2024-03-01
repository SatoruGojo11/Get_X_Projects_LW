import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/card_model.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            card(
              lsTileTxt: 'Getx Alert/Simple Dialog',
              lsTileSubTxt: 'Click to See Dialog',
              onTap: () {
                // Getx Dialog
                Get.defaultDialog(
                  title: 'Delete',
                  titleStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  middleText: 'Are you sure?',
                  middleTextStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  confirm: TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: text(
                      'Yes',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: text(
                      'No',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
            card(
              lsTileTxt: 'Getx Snackbar',
              lsTileSubTxt: 'This is your Snackbar',
              onTap: () {
                // Getx Snackbar
                Get.snackbar(
                  'Jaydip Shingala',
                  'This is Getx Snackbar!!',
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.amber,
                  icon: const Icon(
                    Icons.account_circle,
                    size: 30,
                  ),
                );
              },
            ),
            card(
              lsTileTxt: 'Getx Bottom Sheet',
              lsTileSubTxt: 'Do you want to change App theme?',
              onTap: () {
                // Getx BottomSheet
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: text('Light Theme'),
                          leading: const Icon(Icons.light_mode),
                          onTap: () {
                            log('light mode');
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          title: text('Dark Theme'),
                          leading: const Icon(Icons.dark_mode),
                          onTap: () {
                            log('dark mode');
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            card(
              lsTileTxt: 'Getx Navigation',
              lsTileSubTxt: 'Click to go First Screen',
              onTap: () {
                // Getx Navigation
                // Get.to(const FirstScreen(name: 'Jaydip'));
                Get.toNamed(
                  '/firstScreen',
                  arguments: [
                    'Jaydip',
                    'My Name is Jaydip',
                  ],
                );
              },
            ),
            card(
              lsTileTxt: 'Getx MediaQuery',
              lsTileSubTxt: 'Click to go Media Query Screen',
              onTap: () {
                Get.toNamed('/mediaQueryScreen');
              },
            ),
            card(
              lsTileTxt: 'Getx Localization',
              lsTileSubTxt: 'Click to go Languages Screen',
              onTap: () {
                Get.toNamed('/langScreen');
              },
            ),
            card(
              lsTileTxt: 'Getx Obx Widget',
              lsTileSubTxt: 'Click to go Obx Widget Screen',
              onTap: () {
                Get.toNamed('/obxScreen');
              },
            ),
            card(
              lsTileTxt: 'Getx Get builder Widget',
              lsTileSubTxt: 'Click to go Get Builder Widget Screen',
              onTap: () {
                Get.toNamed('/getBuilderScreen');
              },
            ),
            card(
              lsTileTxt: 'Getx Device Info Widget',
              lsTileSubTxt: 'Click to go Device Info Widget Screen',
              onTap: () {
                Get.toNamed('/deviceInfoScreen');
              },
            ),
            card(
              lsTileTxt: 'Getx Login With Api',
              lsTileSubTxt: 'Click to go Login With Api Screen',
              onTap: () {
                Get.toNamed('/loginWithApi');
              },
            ),
            card(
              lsTileTxt: 'Getx Widget',
              lsTileSubTxt: 'Click to go Getx Widget Screen',
              onTap: () {
                Get.toNamed('/getxScreen');
              },
            ),
            card(
              lsTileTxt: 'Getx Mixin Builder Widget',
              lsTileSubTxt: 'Click to go Mixin Builder Widget Screen',
              onTap: () {
                Get.toNamed('/mixinBuilderScreen');
              },
            ),
            card(
              lsTileTxt: 'Getx Validation',
              lsTileSubTxt: 'Click to go Login Page Validation Screen',
              onTap: () {
                Get.toNamed('/loginPageValidation');
              },
            ),
          ],
        ),
      ),
    );
  }
}
