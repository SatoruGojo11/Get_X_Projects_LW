import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:sizer/sizer.dart';

class SizerWidget extends StatefulWidget {
  const SizerWidget({super.key});

  @override
  State<SizerWidget> createState() => _SizerWidgetState();
}

class _SizerWidgetState extends State<SizerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text(
          'Sizer Widget App',
          fontSize: 8.sp,
        ),
      ),
      body: Container(
        color: Colors.red,
        height: 50.h,
        width: 40.w,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 10.h,
          ),
          child: text(
            'This is Container',
            fontSize: 10.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
