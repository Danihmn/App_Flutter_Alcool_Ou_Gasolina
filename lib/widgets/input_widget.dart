import 'package:app_flutter_alcool_ou_gasolina/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final dynamic label;
  final TextEditingController controller;

  const InputWidget({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: "Big Shoulders Display",
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(child: TextFormFieldWidget(controller: controller)),
      ],
    );
  }
}
