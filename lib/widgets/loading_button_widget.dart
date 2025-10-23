import 'package:flutter/material.dart';
import 'calculate_button_widget.dart';

class LoadingButtonWidget extends StatelessWidget {
  final double fontLabelSize;
  final bool busy;
  final bool invert;
  final String label;
  final VoidCallback onPressed;

  const LoadingButtonWidget({
    super.key,
    required this.busy,
    required this.invert,
    required this.label,
    required this.onPressed,
    required this.fontLabelSize,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 80,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : CalculateButtonWidget(
            label: label,
            fontLabelSize: fontLabelSize,
            backgroundColor: invert
                ? Colors.white
                : Theme.of(context).primaryColor,
            labelColor: invert ? Theme.of(context).primaryColor : Colors.white,
            onPressed: onPressed,
          );
  }
}
