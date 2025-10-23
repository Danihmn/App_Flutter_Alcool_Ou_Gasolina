import 'package:flutter/material.dart';
import 'button_calculate_widget.dart';

class ButtonLoadingWidget extends StatelessWidget {
  double fontLabelSize;
  bool busy = false;
  bool invert = false;
  String text;
  Function function;

  ButtonLoadingWidget({
    super.key,
    required this.busy,
    required this.invert,
    required this.text,
    required this.function,
    required this.fontLabelSize,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonCalculateWidget(
      label: text,
      fontLabelSize: fontLabelSize,
      backgroundColor: Theme.of(context).primaryColor,
      labelColor: Colors.white,
      onPressed: () {},
    );
  }
}
