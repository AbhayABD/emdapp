import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  String text;
  Function onPressed;
  Btn({this.text,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text(text),
        onPressed: onPressed,
        
      ),
    );
  }
}
