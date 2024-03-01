import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class GetxWidget extends StatelessWidget {
  const GetxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(title: text("Getx Widget Page")),
      body: Center(
        // Using GetBuilder
        child: GetX<Controller>(
          init: Controller(),
          builder: (controller) => text(controller.counter.value.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log('Button Clicked');
          controller.increment();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var counter = 0.obs;
  void increment() {
    counter.value++;
  }
}

class Waste extends StatelessWidget {
  const Waste({super.key});

  @override
  Widget build(BuildContext context) {
    var ctrl = Get.find();
    return Scaffold(
      body: Center(
        child: text(ctrl.toString()),
      ),
    );
  }
}
