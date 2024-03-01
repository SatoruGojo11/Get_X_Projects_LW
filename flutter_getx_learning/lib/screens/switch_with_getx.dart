import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/controllers/item_switch_controller.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class SwitchWithGetx extends StatefulWidget {
  const SwitchWithGetx({super.key});

  @override
  State<SwitchWithGetx> createState() => _SwitchWithGetxState();
}

class _SwitchWithGetxState extends State<SwitchWithGetx> {
  ItemSwitchController controller = Get.put(ItemSwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text('Switch With State Management'),
      ),
      body: Column(
        children: [
          text(
            'Hobbies',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('Cricket'),
                Obx(
                  () => Switch(
                    value: controller.cricket.value,
                    onChanged: (value) => controller.cricketCtrl(value),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('Movies'),
                Obx(
                  () => Switch(
                    value: controller.movies.value,
                    onChanged: (value) => controller.movieCtrl(value),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('Chess'),
                Obx(
                  () => Switch(
                    value: controller.chess.value,
                    onChanged: (value) => controller.chessCtrl(value),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('Reading'),
                Obx(
                  () => Switch(
                    value: controller.reading.value,
                    onChanged: (value) => controller.readingCtrl(value),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('Traveling'),
                Obx(
                  () => Switch(
                    value: controller.traveling.value,
                    onChanged: (value) => controller.travelingCtrl(value),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('Boxing'),
                Obx(
                  () => Switch(
                    value: controller.boxing.value,
                    onChanged: (value) => controller.boxingCtrl(value),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
