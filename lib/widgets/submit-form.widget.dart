import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {

  var busy = false;
  late Function submitFunction;

  SubmitForm({ required this.busy, required this.submitFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Padding(
          padding:const EdgeInsets.only(
            left: 60,
            right: 60,
            ),
            child: Input("Gasolina"),
            ),
        Padding(
          padding:const EdgeInsets.only(
            left: 60,
            right: 60,
            ),
            child: Input("Álcool"),
            ),
          LoadingButton(
            busy: false,
            invert: false,
            func: submitFunction,
            text: "CALCULAR",
          ),
      ],
    );
  }
}