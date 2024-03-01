import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList products = [
    'Phone',
    'TV',
    'Camera',
    'Shoes',
    'Watch',
  ].obs;

  RxList liked = [].obs;

  makeFavourite(index){
    if (liked.contains(products[index].toString())) {
      liked.remove(products[index].toString());
    } else {
      liked.add(products[index].toString());
    }
  }
}