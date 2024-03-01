import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  RxString imagePath = ''.obs;

  Future getImageByCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image != null) {
      imagePath.value = image.path.toString();
      Get.back();
    } else {
      Get.snackbar(
        'Warning',
        'No Image Captured',
        messageText: text(
          'No Image Captured',
          color: Colors.white54,
        ),
        backgroundColor: Colors.red,
      );
    }
  }

  Future getImageByGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    log(image?.toString() ?? 'No Image', name: 'Image path');
    if (image != null) {
      imagePath.value = image.path.toString();
      Get.back();
    } else {
      Get.snackbar(
        'Warning',
        'No Image Selected',
        messageText: text(
          'No Image Selected',
          color: Colors.white54,
        ),
        backgroundColor: Colors.red,
      );
    }
  }
}
