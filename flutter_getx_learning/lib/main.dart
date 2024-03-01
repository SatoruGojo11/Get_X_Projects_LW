import 'dart:developer';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/screens/use_of_dartz.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main(List<String> args) {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        orientation == Orientation.portrait
            ? log('Portrait')
            : log('Not Portrait');
        orientation == Orientation.landscape
            ? log('LandScape')
            : log('Not LandScape');
        log(deviceType.name);
        return SafeArea(
          child: DevicePreview(
            // enabled: true,
            builder: (context) => const GetMaterialApp(
              // ignore: deprecated_member_use
              useInheritedMediaQuery: true,
              debugShowCheckedModeBanner: false,
              home: SafeArea(child: UseOfDartZ()),
            ),
          ),
        );
      },
    ),
  );
}

///  Uncomment these code when you want to use Getx related Files  
/*
import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/languages.dart';
import 'package:flutter_getx_learning/screens/device_info.dart';
import 'package:flutter_getx_learning/screens/first_screen.dart';
import 'package:flutter_getx_learning/screens/home_screen_utilities.dart';
import 'package:flutter_getx_learning/screens/languages_screen.dart';
import 'package:flutter_getx_learning/screens/login_with_api.dart';
import 'package:flutter_getx_learning/screens/media_query_screen.dart';
import 'package:flutter_getx_learning/screens/use_getbuilder.dart';
import 'package:flutter_getx_learning/screens/use_getx.dart';
import 'package:flutter_getx_learning/screens/use_mixinbuilder.dart';
import 'package:flutter_getx_learning/screens/use_obx.dart';
import 'package:flutter_getx_learning/screens/validation_getx.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(), // 1st Method of Localization
      // 2nd Method for Localization
      // translationsKeys: const {
      //   'en_US': {
      //     'message': 'What is Your Name?',
      //     'name': 'Jaydip Shingala',
      //   },
      //   'gu_IN': {
      //     'message': 'તમારું નામ શું છે?',
      //     'name': 'જયદિપ શિંગાળા',
      //   },
      //   'hd_IN': {
      //     'message': 'आपका क्या नाम है?',
      //     'name': 'जयदीप शिंगाला',
      //   },
      // },
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/firstScreen',
          page: () => FirstScreen(),
        ),
        GetPage(
          name: '/mediaQueryScreen',
          page: () => const MediaQueryScreen(),
        ),
        GetPage(
          name: '/langScreen',
          page: () => const ChangeLanguages(),
        ),
        GetPage(
          name: '/obxScreen',
          page: () => const ObxWidget1(),
        ),
        GetPage(
          name: '/getBuilderScreen',
          page: () => const GetBuilderWidget(),
        ),
        GetPage(
          name: '/deviceInfoScreen',
          page: () => const DeviceInfoWidget(),
        ),
        GetPage(
          name: '/loginWithApi',
          page: () => const LoginUsingApiWithGetx(),
        ),
        GetPage(
          name: '/getxScreen',
          page: () => const GetxWidget(),
        ),
        GetPage(
          name: '/mixinBuilderScreen',
          page: () => const MixinBuilderWidget(),
        ),
        GetPage(
          name: '/loginPageValidation',
          page: () => const LoginPageValidation(),
        ),
      ],
    ),
  );
}
*/