import 'package:flutter/material.dart';

@immutable
class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  VoidCallback func;
  var text = "";

  LoadingButton({required this.busy, required this.invert, required this.func, required this.text});

  @override
  Widget build(BuildContext context) {
    return busy
    ? Container(
      alignment: Alignment.center,
      height: 50,
      child:const CircularProgressIndicator(
        color: Colors.white,
      ),
    )
    : Container(
      height: 50,
      width: 500,
      margin: const EdgeInsets.fromLTRB(100, 20, 100, 20),
      decoration: BoxDecoration(
        color:invert? Colors.deepPurple : Colors.white,
        borderRadius: BorderRadius.circular(60),
      ),
      child: TextButton(
        onPressed: func,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Big Shoulders Display",
            fontSize: 25,
            color:invert? Colors.white : Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
