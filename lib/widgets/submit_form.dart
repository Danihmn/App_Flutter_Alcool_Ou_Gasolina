import 'package:app_flutter_alcool_ou_gasolina/widgets/input_widget.dart';
import 'package:app_flutter_alcool_ou_gasolina/widgets/loading_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

class SubmitForm extends StatelessWidget {
  final MoneyMaskedTextController gasolineController;
  final MoneyMaskedTextController alcoholController;
  final bool busy;
  final VoidCallback submitFunction;

  const SubmitForm({
    super.key,
    required this.gasolineController,
    required this.alcoholController,
    required this.busy,
    required this.submitFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWidget(label: "Gasolina", controller: gasolineController),
        InputWidget(label: "Álcool", controller: alcoholController),
        LoadingButtonWidget(
          busy: busy,
          invert: false,
          label: "CALCULAR",
          fontLabelSize: 40,
          onPressed: submitFunction,
        ),
      ],
    );
  }
}
