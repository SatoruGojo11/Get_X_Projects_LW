import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;

  void loginApi() async {
    try {
      final response = await Dio().post('https://reqres.in/api/login', data: {
        "email": emailcontroller.value.text,
        "password": passwordcontroller.value.text,
      });

      log(response.statusCode.toString(), name: 'Status code');
      log(response.data.toString(), name: 'Data');

      if (response.statusCode == 200) {
        Get.snackbar(
          'Login Success',
          'Congratulations',
          backgroundColor: Colors.green,
        );
        Get.toNamed('/');
      } else {
        Get.snackbar('Login failed', response.data['error']);
      }
    } catch (e) {
      log(e.toString(), name: 'Catch Method');
    }
  }
}
