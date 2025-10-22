import 'package:app_flutter_alcool_ou_gasolina/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';

class ButtonCalculateWidget extends StatelessWidget {
  final String label;
  final double fontLabelSize;
  final Color corFundo;
  final Color corLabel;

  const ButtonCalculateWidget({
    super.key,
    required this.label,
    required this.fontLabelSize,
    required this.corFundo,
    required this.corLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: corFundo,
        borderRadius: BorderRadius.circular(40),
      ),
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      padding: EdgeInsets.all(10),
      child: TextButtonWidget(
        calcular: label,
        fontSize: fontLabelSize,
        corLabel: corLabel,
      ),
    );
  }
}
