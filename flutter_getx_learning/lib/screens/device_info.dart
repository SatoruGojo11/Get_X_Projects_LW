import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class DeviceInfoWidget extends StatefulWidget {
  const DeviceInfoWidget({super.key});

  @override
  State<DeviceInfoWidget> createState() => _DeviceInfoWidgetState();
}

class _DeviceInfoWidgetState extends State<DeviceInfoWidget> {
  DeviceInfoController deviceInfoController = DeviceInfoController();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: text("Test 1 Page")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => deviceInfoController._initDeviceInfo(),
              child: text('Load Package Info'),
            ),
            const SizedBox(height: 10),
            Obx(
              () => Column(
                children: [
                  text(
                      "Model :- ${deviceInfoController.model.value.toString()}"),
                  const SizedBox(height: 10),
                  text(
                      "Sdk Int :- ${deviceInfoController.sdkInt.value.toString()}"),
                  const SizedBox(height: 10),
                  text(
                      "Release :- ${deviceInfoController.release.value.toString()}"),
                  const SizedBox(height: 10),
                  text(
                      "Manufacturer :- ${deviceInfoController.manufacturer.value.toString()}"),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: text('Go back to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class DeviceInfoController extends GetxController {
  RxString model = 'Unknown'.obs;
  RxString sdkInt = 'Unknown'.obs;
  RxString release = 'Unknown'.obs;
  RxString manufacturer = 'Unknown'.obs;

  Future<void> _initDeviceInfo() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      log('Platform is Android');
      AndroidDeviceInfo info = await deviceInfoPlugin.androidInfo;
      model.value = info.model;
      sdkInt.value = info.version.sdkInt.toString();
      release.value = info.version.release;
      manufacturer.value = info.manufacturer;
      log(model.toString(), name: 'Model');
      log(sdkInt.toString(), name: 'Sdk Int');
      log(release.toString(), name: 'Release');
      log(manufacturer.toString(), name: 'Preview Sdk Int');
    } else if (Platform.isIOS) {
      Fluttertoast.showToast(msg: 'Device is iOS');
    }
    // else if(Platform.){}
  }
}
