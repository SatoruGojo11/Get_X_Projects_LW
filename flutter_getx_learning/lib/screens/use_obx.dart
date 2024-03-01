import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class ObxWidget1 extends StatelessWidget {
  const ObxWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    ObxController c = Get.put(ObxController());

    return Scaffold(
      appBar: AppBar(title: text("Obx Widget Page")),
      body: Center(
        // Using Obx
        child: Obx(
          () => Column(
            children: [
              text('Cricket :- ${c.cricket}'),
              text('Movies :- ${c.movies}'),
              text('Chess :- ${c.chess}'),
              text('Reading :- ${c.reading}'),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () => c.updateCricket(), child: text('Cricket')),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => c.updateMovies(), child: text('Movies')),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => c.updateChess(), child: text('Chess')),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => c.updateReading(), child: text('Reading')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class ObxController extends GetxController {
  RxBool cricket = false.obs;
  RxBool movies = false.obs;
  RxBool chess = false.obs;
  RxBool reading = false.obs;

  updateCricket() {
    if (cricket.value == true) {
      cricket.value = false;
    } else {
      cricket.value = true;
    }
  }

  updateMovies() {
    if (movies.value == true) {
      movies.value = false;
    } else {
      movies.value = true;
    }
  }

  updateChess() {
    if (chess.value == true) {
      chess.value = false;
    } else {
      chess.value = true;
    }
  }

  updateReading() {
    if (reading.value == true) {
      reading.value = false;
    } else {
      reading.value = true;
    }
  }
}
