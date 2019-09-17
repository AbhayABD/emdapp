import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'look.dart';
import 'listen.dart';
import 'feel.dart';
import 'home.dart';
class Airway extends StatefulWidget {
  static String id = "airway";
  @override
  _AirwayState createState() => _AirwayState();
}

class _AirwayState extends State<Airway> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("AIRWAY"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[

                Expanded(child: Btn(text: "Look",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new ALook())
                  );
                },)),
                Expanded(child: Btn(text: "Listen",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new AListen())
                  );
                },)),
                // SizedBox(width:18 ),
                Expanded(child: Btn(text: "Feel",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new AFeel())
                  );
                },)),
                Btn(
                  text: "Home",
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => new Home()));
                  },
                )
              ],
            ),
          ],
        ),
      );

  }
}
