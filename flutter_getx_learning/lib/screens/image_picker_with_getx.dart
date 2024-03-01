import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/controllers/image_picker_controller.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerApp extends StatefulWidget {
  const ImagePickerApp({super.key});

  @override
  State<ImagePickerApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<ImagePickerApp> {
  final ImageController controller = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text('Image Picker Page'),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(File(controller.imagePath.toString()))
                    : null,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                Get.bottomSheet(
                  elevation: 20,
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text(
                          'What do you want to choose :- ',
                          fontSize: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: IconButton.outlined(
                                onPressed: () async {
                                  // Request for Camera Permission
                                  PermissionStatus cameraPermissionStatus =
                                      await Permission.camera.request();
                                  if (cameraPermissionStatus ==
                                      PermissionStatus.granted) {
                                    controller.getImageByCamera();
                                  } else if (cameraPermissionStatus ==
                                      PermissionStatus.denied) {
                                    Get.snackbar(
                                      'Warning',
                                      'Camera Permission Denied.',
                                      backgroundColor: Colors.red,
                                    );
                                  } else if (cameraPermissionStatus ==
                                      PermissionStatus.permanentlyDenied) {
                                    openAppSettings();
                                  }
                                },
                                icon: const Icon(
                                  Icons.camera_alt,
                                  size: 30,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: IconButton.outlined(
                                onPressed: () async {
                                  // Request for Storage Permission
                                  PermissionStatus? storagePermissionStatus =
                                      await Permission.photos.request();
                                  if (storagePermissionStatus ==
                                      PermissionStatus.granted) {
                                    controller.getImageByGallery();
                                  } else if (storagePermissionStatus ==
                                      PermissionStatus.denied) {
                                    Get.snackbar(
                                      'Warning',
                                      'Storage Permission Denied.',
                                      backgroundColor: Colors.red,
                                    );
                                  } else if (storagePermissionStatus ==
                                      PermissionStatus.permanentlyDenied) {
                                    openAppSettings();
                                  }
                                },
                                icon: const Icon(
                                  Icons.photo_library,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: text(
                "Pick Image",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
