// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class FirstScreen extends StatefulWidget {
  var name;
  FirstScreen({
    super.key,
    this.name,
  });

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: text('First Screen ${Get.arguments[0]}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text('This is First Screen'),
            text(Get.arguments[1]),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: text(
                'Go back',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
