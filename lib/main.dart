import 'package:aog/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _gasCtrl = MoneyMaskedTextController();
  final _gasCtrl2 = MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: ListView(
        children: <Widget>[
          const Logo(),
          Row(
            children: <Widget>[
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child:const Text(
                  "Gasolina",
                  style: TextStyle(
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
                  controller: _gasCtrl,
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
          ),
          Row(
            children: <Widget>[
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child:const Text(
                  "Alcool",
                  style: TextStyle(
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
                  controller: _gasCtrl2,
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
          ),
        ],
      ),
    );
  }
}
