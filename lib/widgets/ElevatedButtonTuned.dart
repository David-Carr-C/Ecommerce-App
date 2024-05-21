import 'package:flutter/material.dart';

Widget elevatedButtonTuned({
  required String text,
  required void Function() onPressed,
  required bool isTransparent,
  required Color borderColor,
  required Color backgroundColor,
  required Color textColor,
  required double fontSize,
  required double width,
  required double height,
  required double borderRadius,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: isTransparent ? Colors.transparent : backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(color: borderColor),
      ),
    ),
    onPressed: onPressed,
    child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
  );
}
