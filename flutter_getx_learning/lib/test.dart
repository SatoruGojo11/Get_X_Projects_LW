import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:sizer/sizer.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text('Test Page', fontSize: 3.h),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: text(
            'Hello This is Container',
          ),
        ),
      ),
    );
  }
}
