import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class GetBuilderWidget extends StatelessWidget {
  const GetBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: text("Get Builder Widget Page")),
      body: Center(
        // Using GetBuilder
        child: GetBuilder<GetBuilderController>(
          init: GetBuilderController(), // Required
          builder: (c1) => Column(
            children: [
              text('Cricket :- ${c1.cricket1}'),
              text('Movies :- ${c1.movies1}'),
              text('Chess :- ${c1.chess1}'),
              text('Reading :- ${c1.reading1}'),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () => c1.updateCricket1(),
                  child: text('Cricket')),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => c1.updateMovies1(),
                  child: text('Movies')),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => c1.updateChess1(), child: text('Chess')),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => c1.updateReading1(),
                  child: text('Reading')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      
    );
  }
}

class GetBuilderController extends GetxController {
  var cricket1 = false;
  var movies1 = false;
  var chess1 = false;
  var reading1 = false;

  updateCricket1() {
    if (cricket1 == true) {
      cricket1 = false;
    } else {
      cricket1 = true;
    }
    update(); // Mandatory
  }

  updateMovies1() {
    if (movies1 == true) {
      movies1 = false;
    } else {
      movies1 = true;
    }
    update();
  }

  updateChess1() {
    if (chess1 == true) {
      chess1 = false;
    } else {
      chess1 = true;
    }
    update();
  }

  updateReading1() {
    if (reading1 == true) {
      reading1 = false;
    } else {
      reading1 = true;
    }
    update();
  }
}

