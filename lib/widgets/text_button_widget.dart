import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String calcular;

  const TextButtonWidget({super.key, required this.calcular});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        calcular,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
          fontSize: 40,
          fontFamily: "Big Shoulders Display",
        ),
      ),
    );
  }
}
