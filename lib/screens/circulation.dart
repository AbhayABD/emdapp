import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'CListen.dart';
import 'Clook.dart';
import 'Cfeel.dart';
import 'home.dart';
class Circulation extends StatefulWidget {
  static String id = "circulation";
  @override
  CirculationState createState() => CirculationState ();
}

class  CirculationState extends State<Circulation> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("CListen"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[

                Expanded(child: Btn(text: "Look",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new CLook())
                  );
                },)),
                Expanded(child: Btn(text: "Listen",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new CLook())
                  );
                },)),
                // SizedBox(width:18 ),
                Expanded(child: Btn(text: "Feel",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new Cfeel())
                  );
                },)),
              ],
            ),
            Btn(
              text: "Home",
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Home()));
              },
            )
          ],
        ),
      );

  }
}
