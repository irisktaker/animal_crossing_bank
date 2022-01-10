import 'package:flutter/material.dart';

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
      color: Color(0xFF037F76),
    ),
    decoration: InputDecoration(
      enabled: true,
      enabledBorder: const UnderlineInputBorder(
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
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
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
