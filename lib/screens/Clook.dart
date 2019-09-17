import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'Clisten.dart';
import 'listen.dart';
import 'Cfeel.dart';
class CLook extends StatefulWidget {
  static String id = "breathing";
  @override
  CLookState createState() => CLookState ();
}
enum gap{pink ,pale,motteled,bluep}
gap _grp;
bool crt,jvp,oedema;

class  CLookState extends State<CLook> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Circulatory Look"),
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
                      new CListen())
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "General Appearence Patient",
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child:  ListTile(
                    title: const Text('Pink'),
                    leading: Radio(
                      value: gap.pink,
                      groupValue: _grp,
                      onChanged: (gap value) {
                        setState(() { _grp = value; });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child:  ListTile(
                    title: const Text('Pale'),
                    leading: Radio(
                      value: gap.pale,
                      groupValue: _grp,
                      onChanged: (gap value) {
                        setState(() { _grp = value; });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child:  ListTile(
                    title: const Text('blue peripheries'),
                    leading: Radio(
                      value: gap.bluep,
                      groupValue: _grp,
                      onChanged: (gap value) {
                        setState(() { _grp = value; });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child:  ListTile(
                    title: const Text('Motelled'),
                    leading: Radio(
                      value: gap.motteled,
                      groupValue: _grp,
                      onChanged: (gap value) {
                        setState(() { _grp = value; });
                      },
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Assess the Capillary Refill Time",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    title: const Text('< 2sec'),
                    leading: Radio(
                      value: true,
                      groupValue: crt,
                      onChanged: (bool value) {
                        setState(() {
                          crt = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    title: const Text('> 2sec'),
                    leading: Radio(
                      value: false,
                      groupValue: crt,
                      onChanged: (bool value) {
                        setState(() {
                          crt = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "JVP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    title: const Text('Normal'),
                    leading: Radio(
                      value: true,
                      groupValue: jvp,
                      onChanged: (bool value) {
                        setState(() {
                          jvp = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    title: const Text('Raised'),
                    leading: Radio(
                      value: false,
                      groupValue: jvp,
                      onChanged: (bool value) {
                        setState(() {
                          jvp = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Oedema",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    title: const Text('General'),
                    leading: Radio(
                      value: true,
                      groupValue: oedema,
                      onChanged: (bool value) {
                        setState(() {
                          oedema = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    title: const Text('Pedal'),
                    leading: Radio(
                      value: false,
                      groupValue: oedema,
                      onChanged: (bool value) {
                        setState(() {
                          oedema = value;
                        });
                      },
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
