import 'package:app_flutter_alcool_ou_gasolina/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';

class CalculateButtonWidget extends StatelessWidget {
  final String label;
  final double fontLabelSize;
  final Color backgroundColor;
  final Color labelColor;
  final VoidCallback onPressed;

  const CalculateButtonWidget({
    super.key,
    required this.label,
    required this.fontLabelSize,
    required this.backgroundColor,
    required this.labelColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      padding: const EdgeInsets.all(10),
      child: TextButtonWidget(
        calculate: label,
        fontSize: fontLabelSize,
        labelColor: labelColor,
        onPressed: onPressed,
      ),
    );
  }
}
