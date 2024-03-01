import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/controllers/login_with_api.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:flutter_getx_learning/models/textformfield.dart';
import 'package:get/get.dart';

class LoginUsingApiWithGetx extends StatefulWidget {
  const LoginUsingApiWithGetx({super.key});

  @override
  State<LoginUsingApiWithGetx> createState() => _LoginUsingApiWithGetxState();
}

class _LoginUsingApiWithGetxState extends State<LoginUsingApiWithGetx> {
  final _validationkey = GlobalKey<FormState>();

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text(
          'Sign up Page',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 25,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Login Page',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Welcome to the Register Page...',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Form(
                    key: _validationkey,
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        textformfield(
                          controller.emailcontroller.value,
                          "Enter your Email-id",
                          "Email-id",
                          RegExp('[a-zA-z@.1-90]'),
                          keyboardtype: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter your Email-id";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 15),
                        textformfield(
                          controller.passwordcontroller.value,
                          "Enter your Password",
                          "Password",
                          RegExp('[a-zA-z@.1-90#%*&^_]'),
                          keyboardtype: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter your Password";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[500],
                        elevation: 10,
                        shadowColor: Colors.green,
                        fixedSize: const Size(100, 50)),
                    onPressed: () {
                      if (_validationkey.currentState?.validate() ?? false) {
                        controller.loginApi();
                      }
                    },
                    child: text(
                      'Submit',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
