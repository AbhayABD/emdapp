import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart';
import 'Blook.dart';
import 'Blisten.dart';
import 'package:test3/components/button.dart';
import 'home.dart';

class BFeel extends StatefulWidget {
  @override
  _BFeelState createState() => _BFeelState();
}
bool anterior,posterior,fremitus,se,tenderness,slider =false;
int tender;
class _BFeelState extends State<BFeel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Breathing Feel"),
      ),
      body:ListView(
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Thoracic expansion:",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Anterior",
              style: TextStyle(fontWeight: FontWeight.bold,),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('Yes'),
                  leading: Radio(
                    value: true,
                    groupValue: anterior,
                    onChanged: (bool value) {
                      setState(() {
                        anterior = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('No'),
                  leading: Radio(
                    value: false,
                    groupValue: anterior,
                    onChanged: (bool value) {
                      setState(() {
                        anterior = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Posterior",
              style: TextStyle(fontWeight: FontWeight.bold,),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('Yes'),
                  leading: Radio(
                    value: true,
                    groupValue: posterior,
                    onChanged: (bool value) {
                      setState(() {
                        posterior = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('No'),
                  leading: Radio(
                    value: false,
                    groupValue: posterior,
                    onChanged: (bool value) {
                      setState(() {
                        posterior = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Fremitus",
              style: TextStyle(fontWeight: FontWeight.bold,),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('Yes'),
                  leading: Radio(
                    value: true,
                    groupValue: fremitus,
                    onChanged: (bool value) {
                      setState(() {
                        fremitus = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('No'),
                  leading: Radio(
                    value: false,
                    groupValue: fremitus,
                    onChanged: (bool value) {
                      setState(() {
                        fremitus = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Subcutaneous emphysema",
              style: TextStyle(fontWeight: FontWeight.bold,),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('Yes'),
                  leading: Radio(
                    value: true,
                    groupValue: se,
                    onChanged: (bool value) {
                      setState(() {
                        se = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('No'),
                  leading: Radio(
                    value: false,
                    groupValue: se,
                    onChanged: (bool value) {
                      setState(() {
                        se = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Tenderness",
              style: TextStyle(fontWeight: FontWeight.bold,),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('Yes'),
                  leading: Radio(
                    value: true,
                    groupValue: tenderness,
                    onChanged: (bool value) {
                      setState(() {
                        tenderness = value;
                        slider = true;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('No'),
                  leading: Radio(
                    value: false,
                    groupValue: tenderness,
                    onChanged: (bool value) {
                      setState(() {
                        tenderness = value;
                        slider =false;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),

          Visibility(
            visible: slider,
              child: TextField(
                onChanged: (String val){
                  setState(() {
                    tender = int.parse(val);
                  });
                },
              )),
          Btn(
            text: "Home",
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Home()));
            },
          )
        ],
      )
    );
  }
}
