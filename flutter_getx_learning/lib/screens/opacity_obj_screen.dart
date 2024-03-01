import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/controllers/opacity_controller.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class OpacityOfObj extends StatefulWidget {
  const OpacityOfObj({super.key});

  @override
  State<OpacityOfObj> createState() => _OpacityOfObjState();
}

class _OpacityOfObjState extends State<OpacityOfObj> {
  final OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text('Opacity Through Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            ),
          ),
          const SizedBox(height: 20),
          Obx(
            () => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.opacityOfObj(value);
                }),
          ),
        ],
      ),
    );
  }
}
