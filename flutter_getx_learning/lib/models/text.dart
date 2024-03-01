import 'package:flutter/material.dart';

Text text(
  String txt, {
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return Text(
    txt,
    style: TextStyle(
      color: color,
      fontSize: fontSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
    ),
  );
}
