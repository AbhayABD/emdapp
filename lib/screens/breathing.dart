import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'Blook.dart';
import 'Blisten.dart';
import 'Bfeel.dart';
import 'home.dart';
class Breathe extends StatefulWidget {
  static String id = "breathing";
  @override
  BreatheState createState() => BreatheState ();
}

class  BreatheState extends State<Breathe> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Breathing"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[

                Expanded(child: Btn(text: "Look",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new Blook())
                  );
                },)),
                Expanded(child: Btn(text: "Listen",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new Blisten())
                  );
                },)),
                // SizedBox(width:18 ),
                Expanded(child: Btn(text: "Feel",onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new BFeel())
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
