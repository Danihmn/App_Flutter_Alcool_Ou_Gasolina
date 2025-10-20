import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const TextFormFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: [
        CurrencyInputFormatter(
          leadingSymbol: 'R\$',
          useSymbolPadding: true,
          thousandSeparator: ThousandSeparator.Period,
        ),
      ],
      keyboardType: TextInputType.number,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 45,
        fontFamily: "Big Shoulders Display",
      ),
      decoration: const InputDecoration(border: InputBorder.none),
    );
  }
}
