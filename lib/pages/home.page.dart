import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import '../widgets/logo.widget.dart';
import '../widgets/submit-form.widget.dart';
import '../widgets/success.widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _busy = false;

  var _completed = false;

  var _resultText = "Compensa utilizar álcool";

  var _gasCtrl = MoneyMaskedTextController();

  var _alcCtrl = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: ListView(
        children: <Widget>[
          const Logo(),
          _completed
              ? Success(
                  result: _resultText,
                  reset: reset,
                )
              : SubmitForm(
                  busy: _busy,
                  submitFunction: calculate,
                  gasCtrl: _gasCtrl,
                  alcCtrl: _alcCtrl,
                )
        ],
      ),
    );
  }

  Future calculate() {
    double alc =
        double.parse(_alcCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(_gasCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    setState(() {
      _completed = false;
      _busy = true;
    });

    return Future.delayed(const Duration(seconds: 3),(){
    
    setState(() {
      if (res >= 0.7) {
      _resultText = "Compensa utilizar Gasolina!";
    }
    else {
      _resultText = "Compensa utilizar Álcool!";
    }
    _busy = false;
    _completed = true;
    });
    });
    
    
  }

  reset(){
    setState(() {
    _alcCtrl.clear();
    _gasCtrl.clear();
    _completed = false;
    _busy = false;
    });
    
  }
}
