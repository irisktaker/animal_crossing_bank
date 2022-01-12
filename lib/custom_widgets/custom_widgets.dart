import 'package:flutter/material.dart';

///
/// Main Background style 1

Stack baseBackgroundImage(Size size) {
  return Stack(
    children: [
      Image.asset(
        'assets/images/rectangle_green.png',
        width: size.width,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/artboard.png',
        width: size.width,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/rectangle.png',
        width: size.width,
        fit: BoxFit.fill,
      ),
    ],
  );
}

///
/// Main Background style 2

Stack baseBackgroundImage2(Size size) {
  return Stack(
    children: [
      Image.asset(
        'assets/images/rectangle_green.png',
        width: size.width,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/artboard.png',
        width: size.width,
        fit: BoxFit.fill,
      ),
    ],
  );
}

///
/// Head Title

Text buildHeadTitle({
  required String? text,
  double? size = 43.45,
  Color? color = const Color(0xFFFFF8E2),
}) {
  return Text(
    text!,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'FinkHeavy Regular',
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: color,
    ),
  );
}

///
/// Title

Text buildTitle({
  required String? text,
  double? size = 18,
  Color? color = const Color(0xFF037F76),
}) {
  return Text(
    text!,
    textAlign: TextAlign.start,
    style: TextStyle(
      fontFamily: 'kraboudja',
      fontSize: size,
      fontWeight: FontWeight.w600,
      letterSpacing: 2.4,
      color: color,
    ),
  );
}

///
/// Divider

Divider buildDivider({
  Color? color = const Color(0xFFFFF8E2),
}) {
  return Divider(
    thickness: 3,
    color: color,
  );
}

///
/// Container

Container buildCustomContainerField({
  required String? text,
}) {
  return Container(
    // text: 'Name: Jane Doe',
    width: double.infinity,
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Text(
      text!,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF656565),
      ),
    ),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xFF037F76),
          width: 3.0,
        ),
      ),
    ),
  );
}
