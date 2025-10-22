import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String calcular;
  final double fontSize;
  final Color corLabel;

  const TextButtonWidget({
    super.key,
    required this.calcular,
    required this.fontSize,
    required this.corLabel,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        calcular,
        style: TextStyle(
          color: corLabel,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          fontFamily: "Big Shoulders Display",
        ),
      ),
    );
  }
}
