import 'package:aog/widgets/input.widget.dart';
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
          Input("Gasolina"),
          Input("Álcool"),
          Container(
            margin: const EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "CALCULAR",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: "Big Shoulders Display",
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
