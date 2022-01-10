import 'package:flutter/material.dart';

TextFormField buildTextFormField({
  required String? hint,
  bool? obscure = false,
  TextEditingController? controller,
  String? Function(String?)? validator,
  TextInputType? keyboardType,
  Widget? suffixIcon,
  EdgeInsetsGeometry? widthHeightPadding =
      const EdgeInsets.fromLTRB(13.0, 23.0, 20.0, 23.0),
  double? fontSize = 16.0,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText: obscure!,
    validator: validator,
    style: const TextStyle(
      color: Color(0xFF037F76),
    ),
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.red),
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
