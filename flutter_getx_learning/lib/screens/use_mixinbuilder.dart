import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class MixinBuilderWidget extends StatelessWidget {
  const MixinBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    MixinController controller = Get.put(MixinController());

    return Scaffold(
      appBar: AppBar(
        title: text('Mixin Builder Page'),
      ),
      body: Center(
        child: MixinBuilder(
          init: MixinController(),
          builder: (p0) => text('${p0.one + p0.two.value}'),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.incrementOne();
            },
            child: text('1'),
          ),
          FloatingActionButton(
            onPressed: () {
              controller.incrementTwo();
            },
            child: text('2'),
          ),
        ],
      ),
    );
  }
}

class MixinController extends GetxController {
  int one = 1; // simple variable

  void incrementOne() {
    one++;
    update();
  }

  var two = 2.obs; // reactive stream

  void incrementTwo() => two.value++;
}
