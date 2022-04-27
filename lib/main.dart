import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading-button.widget.dart';
import 'package:aog/widgets/logo.widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: ListView(
        children: <Widget>[
          const Logo(),
          Container(
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
                const Text(
                  "Compensa utilizar álcool",
                  style: TextStyle(
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
                  false,
                  false,
                  () {},
                  "CALCULAR NOVAMENTE",
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Input("Gasolina"),
          Input("Álcool"),
          LoadingButton(
            false,
            false,
            () {},
            "CALCULAR",
          ),
        ],
      ),
    );
  }
}
