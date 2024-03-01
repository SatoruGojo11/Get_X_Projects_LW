import 'package:flutter/material.dart';
import 'package:flutter_getx_learning/models/text.dart';

Card card({
  Color? color,
  String? lsTileTxt,
  String? lsTileSubTxt,
  void Function()? onTap,
}) {
  return Card(
    margin: const EdgeInsets.all(5),
    elevation: 10,
    color: color,
    child: ListTile(
      title: text(lsTileTxt ?? ''),
      subtitle: text(lsTileSubTxt ?? ''),
      onTap: onTap,
    ),
  );
}
