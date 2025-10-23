import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String calculate;
  final double fontSize;
  final Color labelColor;
  final VoidCallback onPressed;

  const TextButtonWidget({
    super.key,
    required this.calculate,
    required this.fontSize,
    required this.labelColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        calculate,
        style: TextStyle(
          color: labelColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          fontFamily: "Big Shoulders Display",
        ),
      ),
    );
  }
}
