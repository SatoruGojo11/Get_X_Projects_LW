import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class MediaQueryScreen extends StatefulWidget {
  const MediaQueryScreen({super.key});

  @override
  State<MediaQueryScreen> createState() => _MediaQueryScreenState();
}

class _MediaQueryScreenState extends State<MediaQueryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text('MediaQuery Page'),
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height * .5, // MediaQuery
        height: Get.height * .2,
        width: Get.width * .5,

        color: Colors.red,
        child: Center(
          child: text(
            'This is Container',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
