import 'package:flutter/material.dart';

Stack baseBackgroundImage (Size size) {
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
Stack baseBackgroundImage2 (Size size) {
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

Divider buildDivider({
  Color? color = const Color(0xFFFFF8E2),
}) {
  return Divider(
    thickness: 3,
    color: color,
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
  Widget? suffixIcon,
  EdgeInsetsGeometry? widthHeightPadding = const EdgeInsets.fromLTRB(13.0, 23.0, 20.0, 23.0),
  double? fontSize = 16.0,
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
      contentPadding: widthHeightPadding,
      focusColor: const Color(0xFF037F76),
      fillColor: const Color(0xFFFFF9E6),
      filled: true,
      suffixIcon: suffixIcon,
      hintText: hint,
      hintStyle: TextStyle(
        color: const Color(0xFF037F76),
        fontSize: fontSize,
      ),
    ),
  );
}

TextField buildTextField({
  TextEditingController? controller,
  required String? text,
  required TextInputType? type,
  Widget? suffixIcon,
  bool? obscureText = false,

}) {
  return TextField(
    controller: controller,
    obscureText: obscureText!,
    keyboardType: type,
    style: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    decoration: InputDecoration(
      enabled: true,
      enabledBorder:  const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF037F76),
          width: 3.0,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF037F76),
          width: 3.0,
        ),
      ),
      suffixIcon: suffixIcon,
      hintText: text,
      hintStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w900,
      ),
    ),
  );
}
