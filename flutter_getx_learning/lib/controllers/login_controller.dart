import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormController extends GetxController {
  final loginFormKey = GlobalKey<FormState>().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  @override
  void onInit() {
    // Simulating obtaining the user name from some local storage
    // emailController.value.text = 'jd@gmail.com';
    super.onInit();
  }

  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
  }

  validator(String value) {
    if (value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

  void login() {
    if (loginFormKey.value.currentState?.validate() ?? false) {
      checkUser(emailController.value.text, passwordController.value.text)
          .then((auth) {
        if (auth) {
          Get.snackbar('Login', 'Login successfully');
        } else {
          Get.snackbar('Login', 'Invalid email or password');
          emailController.value.clear();
          passwordController.value.clear();
        }
      });
    }
  }

  // Api Simulation
  Future<bool> checkUser(String user, String password) {
    if (user == 'jd@gmail.com' && password == 'Jaydip@1212') {
      return Future.value(true);
    }
    return Future.value(false);
  }
}
