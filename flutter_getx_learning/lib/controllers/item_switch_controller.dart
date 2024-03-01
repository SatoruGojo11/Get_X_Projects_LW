import 'package:get/get.dart';

class ItemSwitchController extends GetxController {
  RxBool cricket = false.obs;
  RxBool movies = false.obs;
  RxBool chess = false.obs;
  RxBool reading = false.obs;
  RxBool traveling = false.obs;
  RxBool boxing = false.obs;

  cricketCtrl(bool value) {
    cricket.value = value;
  }

  movieCtrl(bool value) {
    movies.value = value;
  }

  chessCtrl(bool value) {
    chess.value = value;
  }

  readingCtrl(bool value) {
    reading.value = value;
  }

  travelingCtrl(bool value) {
    traveling.value = value;
  }

  boxingCtrl(bool value) {
    boxing.value = value;
  }
}
