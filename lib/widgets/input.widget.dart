import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final controller = MoneyMaskedTextController();
  var label = "";

  Input(this.label, {Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row(
            children: <Widget>[
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child: Text(
                  label,
                  style: const TextStyle(
                    fontFamily: "Big Shoulders Display",
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontFamily: "Big Shoulders Display",
                    color: Colors.white,
                    fontSize: 40,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          );
  }
}