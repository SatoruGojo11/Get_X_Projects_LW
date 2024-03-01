import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/controllers/dartz_controller.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class UseOfDartZ extends StatefulWidget {
  const UseOfDartZ({super.key});

  @override
  State<UseOfDartZ> createState() => UseOfDartZState();
}

class UseOfDartZState extends State<UseOfDartZ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text(
          'Use of DartZ through Api Calling',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: GetBuilder(
          init: DartZController(),
          builder: (controller) {
            controller.getData();
            return controller.hasData.value
                ? ListView.separated(
                    itemCount: controller.apiData.length,
                    itemBuilder: (context, index) => ListTile(
                      leading: text(controller.apiData[index]['id'].toString()),
                      title: text(
                          'Title :- ${controller.apiData[index]['title']}'),
                      subtitle:
                          text('Body :- ${controller.apiData[index]['body']}'),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
