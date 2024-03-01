import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/controllers/favourites_controller.dart';
import 'package:flutter_getx_learning/models/text.dart';
import 'package:get/get.dart';

class MarkAsFavourite extends StatefulWidget {
  const MarkAsFavourite({super.key});

  @override
  State<MarkAsFavourite> createState() => _MarkAsFavouriteState();
}

class _MarkAsFavouriteState extends State<MarkAsFavourite> {
  FavouriteController fvController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text('Cart Page'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: text(fvController.products[index].toString()),
            trailing: Obx(
              () => IconButton(
                onPressed: () {
                  fvController.makeFavourite(index);
                },
                icon: fvController.liked
                        .contains(fvController.products[index].toString())
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.favorite_border,
                      ),
              ),
            ),
          );
        },
        itemCount: fvController.products.length,
      ),
    );
  }
}
