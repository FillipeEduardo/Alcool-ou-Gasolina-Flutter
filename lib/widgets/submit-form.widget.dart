import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var busy = false;
  VoidCallback submitFunction;

  SubmitForm({
    required this.busy,
    required this.submitFunction,
    required this.gasCtrl,
    required this.alcCtrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Padding(
          padding:const EdgeInsets.only(
            left: 60,
            right: 60,
            ),
            child: Input(
              label: "Gasolina",
              controller: gasCtrl),
            ),
        Padding(
          padding:const EdgeInsets.only(
            left: 60,
            right: 60,
            ),
            child: Input(
              controller: alcCtrl,
              label: "Álcool",
            ),
            ),
          LoadingButton(
            busy: busy,
            invert: false,
            func: submitFunction,
            text: "CALCULAR",
          ),
      ],
    );
  }
}