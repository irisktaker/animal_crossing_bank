import 'package:flutter/material.dart';

Stack baseBackgroundImage (Size size) {
  return Stack(
    children: [
      Image.asset(
        'assets/images/rectangle_green.png',
        width: size.width,
        fit: BoxFit.cover,
      ),
      Image.asset(
        'assets/images/artboard.png',
        width: size.width,
        fit: BoxFit.cover,
      ),
      Image.asset(
        'assets/images/rectangle.png',
        width: size.width,
        fit: BoxFit.cover,
      ),
    ],
  );
}

Text buildHeadTitle({String? text, double? size = 43.45}) {
  return Text(
    text!,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'FinkHeavy Regular',
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: const Color(0xFFFFF8E2),
    ),
  );
}

Divider buildDivider() {
  return const Divider(
    thickness: 3,
    color: Color(0xFFFFF8E2),
  );
}

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

TextButton buildTextButton({required String? text}) {
  return TextButton(
    onPressed: () {},
    child: Text(
      text!,
      style: const TextStyle(
        fontFamily: 'Bolt Regular',
        color: Color(0xFFFFFFFF),
        fontSize: 14.0,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}

TextFormField buildTextFormField({
  required String? hint,
  bool? obscure = false,
  TextEditingController? controller,
  TextInputType? keyboardType,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText: obscure!,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusColor: const Color(0xFF037F76),

      fillColor: const Color(0xFFFFF9E6),
      filled: true,
      hintText: hint,
      hintStyle: const TextStyle(
        color: Color(0xFF037F76),
      ),
    ),
  );
}
