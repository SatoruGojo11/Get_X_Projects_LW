import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/controllers/login_controller.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class LoginPageValidation extends StatelessWidget {
  const LoginPageValidation({super.key});

  @override
  Widget build(BuildContext context) {
    LoginFormController controller = Get.put(LoginFormController());
    return Scaffold(
      appBar: AppBar(title: text('LOGIN Page')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => Form(
            key: controller.loginFormKey.value,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controller.emailController.value,
                  decoration: const InputDecoration(labelText: 'E-mail'),
                  validator: (value) => controller.validator(value ?? ''),
                ),
                TextFormField(
                  controller: controller.passwordController.value,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: (value) => controller.validator(value ?? ''),
                  obscureText: true,
                ),
                ElevatedButton(
                  onPressed: () => controller.login(),
                  child: text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
