import 'package:flutter/material.dart';

ElevatedButton buildMainBtn({
  required void Function()? press,
  Color? btnColor = const Color(0xFFFFF8E2),
  required String? text,
  Color? textColor = const Color(0xFF037F76),
  Size? minimumSize = const Size(254, 65),
  double fontSize = 24,
  EdgeInsetsGeometry? padding = const EdgeInsets.all(18),
  FontWeight? fontWeight = FontWeight.bold,
}) {
  return ElevatedButton(
    onPressed: press,
    style: ElevatedButton.styleFrom(
      primary: btnColor,
      minimumSize: minimumSize,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: padding,
    ),
    child: Text(
      text!,
      style: TextStyle(
        color: textColor,
        fontFamily: 'kraboudja',
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    ),
  );
}
