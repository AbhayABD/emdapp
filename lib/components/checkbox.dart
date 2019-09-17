import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  String text;
  bool val;
  Function onChanged;
 CheckBox({this.text,this.val,this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(text),
        ),
        Expanded(child: Checkbox(
        value: val,
          onChanged: onChanged,
        ))
      ],
    );
  }
}
