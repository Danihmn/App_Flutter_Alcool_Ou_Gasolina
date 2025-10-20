import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
        Image.asset("assets/images/aog-white.png", height: 80),
        SizedBox(height: 10),
        Text(
          "Álcool ou Gasolina",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: "Big Shoulders Display",
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
