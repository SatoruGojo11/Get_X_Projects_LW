import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:dartz/dartz.dart';

class DartZController extends GetxController {
  RxBool hasData = false.obs;
  var apiData = [];

  Dio dio = Dio();

  Future<Either<String, List>> fetchDataFromApi() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      return Right(response.data);
    } else if (response.statusCode == 404) {
      return Left(response.statusCode.toString());
    }
    return const Left('Something happened!!');
  }

  Future<void> getData() async {
    try {
      final result = await fetchDataFromApi();
      result.fold((l) {
        hasData(false);
        log('left part');
        Get.snackbar('Warning', "Error while fetching data :::::::: $l");
      }, (r) {
        hasData(true);
        apiData = r;
      });
      update();
    } catch (e) {
      Get.snackbar(
        'Warning',
        "Error while fetching data :::::::: $e",
        backgroundColor: Colors.red,
      );
      log(e.toString(), name: 'Catch part');
    }
  }
}
