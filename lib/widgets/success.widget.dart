import 'package:flutter/material.dart';
import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  late Function reset;
  Success ({required this.result, required this.reset});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.all(
              30,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(
                25,
              ),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Text(
                  result,
                  style:const TextStyle(
                    fontFamily: "Big Shoulders Display",
                    fontSize: 40,
                    color: Colors.deepPurple,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                LoadingButton(
                  busy: false,
                  invert: true,
                  func: reset,
                  text: "CALCULAR NOVAMENTE",
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
  }
}