import 'package:flutter/material.dart';

Padding buildAAppBar(Size size) {
  Image buildIconImage({
    String? imageURL,
    double? width = 46,
    double? height = 46,
  }) {
    return Image.asset(
      imageURL!,
      width: width,
      height: height,
    );
  }

  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildIconImage(imageURL: 'assets/images/img.png'),
        buildIconImage(imageURL: 'assets/images/img_1.png'),
        buildIconImage(
            imageURL: 'assets/images/animal_Crossing_pattern.png',
            width: 70,
            height: 66),
        SizedBox(width: size.width * 0.10),
        buildIconImage(
            imageURL: 'assets/images/img_2.png', width: 60, height: 60),
      ],
    ),
  );
}
