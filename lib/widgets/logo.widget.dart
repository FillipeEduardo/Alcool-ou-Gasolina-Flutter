import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        const SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/images/aog-white.png",
            height: 120,
          ),
           const SizedBox(
             height: 30,
          ),
          const Text(
            "Alcool ou Gasolina",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: "Big Shoulders Display"
            ),
          ),
          const SizedBox(
            height: 20,
          )
      ],
    );
  }
}