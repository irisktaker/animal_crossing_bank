import 'package:flutter/material.dart';

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
