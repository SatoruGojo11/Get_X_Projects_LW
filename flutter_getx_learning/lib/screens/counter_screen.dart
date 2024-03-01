import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/controllers/counter_controller.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: text('Counter Page State Management'),
      ),
      body: Column(
        children: [
          Center(
            child: Obx(() => text(controller.a.toString())),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10000,
              itemBuilder: (context, index) => text(
                index.toString(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.incrementValue();
          },
          child: const Icon(
            Icons.add,
          )),
    );
  }
}
