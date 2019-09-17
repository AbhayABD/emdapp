import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'Clook.dart';
import 'Cfeel.dart';
import 'package:test3/components/checkbox.dart';
import 'home.dart';
class CListen extends StatefulWidget {
  @override
  _CListenState createState() => _CListenState();
}
String site;
int size;
bool Cardiac_Monitor = false;
bool mental = false;
bool Tachycardia = false;
bool Haemorrhagic = false;
bool nHaemorrhagic = false;
int bp;
bool heart = false;
bool mur = false;
bool mur1 = false;
bool cardiogenic = false;
bool BP_Monitor = false;

bool neurogenic = false;

bool septic = false;

bool anaphylactic = false;

List<bool> BP = [false, false];
double Width = 124;

bool hr = false, sm = false, dm = false;
List<bool> hr1 = [false, false, false, false, false];
List<bool> sm1 = [false, false, false, false, false];
List<bool> dm1 = [false, false, false, false, false];
int i = 0;

class _CListenState extends State<CListen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circulatory Listen"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Btn(
                    text: "Look",
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => new CLook()));
                    },
                  )),
              Expanded(
                  child: Btn(
                    text: "Listen",
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => new CListen()));
                    },
                  )),
              // SizedBox(width:18 ),
              Expanded(
                  child: Btn(
                    text: "Feel",
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Cfeel()));
                    },
                  )),
            ],
          ), //buttons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Heart Sounds",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: heart,
                    onChanged: (bool val) {
                      setState(() {
                        heart = val;
                        print(val);
                        if (val == true) {
                          hr = true;
                        } else {
                          hr = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: hr,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Normal",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: hr1[0],
                          onChanged: (bool val) {
                            setState(() {
                              hr1[0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Muffled",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: hr1[1],
                          onChanged: (bool val) {
                            setState(() {
                              hr1[1] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Murmurs",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: hr1[2],
                          onChanged: (bool val) {
                            setState(() {
                              hr1[2] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Gallops",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: hr1[3],
                          onChanged: (bool val) {
                            setState(() {
                              hr1[3] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "Irregular",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: hr1[4],
                          onChanged: (bool val) {
                            setState(() {
                              hr1[4] = val;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Systolic Murmurs",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: mur,
                    onChanged: (bool val) {
                      setState(() {
                        mur = val;
                        print(val);
                        if (val == true) {
                          sm = true;
                        } else {
                          sm = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: sm,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "aortic stenosis",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: sm1[0],
                          onChanged: (bool val) {
                            setState(() {
                              sm1[0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "mitral regurgitation.",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: sm1[1],
                          onChanged: (bool val) {
                            setState(() {
                              sm1[1] = val;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "Diastolic Murmurs",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: mur1,
                    onChanged: (bool val) {
                      setState(() {
                        mur1 = val;

                        if (val == true) {
                          dm = true;
                        } else {
                          dm = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: dm,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "aortic regurgitation",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: dm1[0],
                          onChanged: (bool val) {
                            setState(() {
                              dm1[0] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "mitral regurgitation.",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: dm1[1],
                          onChanged: (bool val) {
                            setState(() {
                              dm1[1] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "pulmonic regurgitation",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: dm1[2],
                          onChanged: (bool val) {
                            setState(() {
                              dm1[2] = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                              "mitral stenosis",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: dm1[3],
                          onChanged: (bool val) {
                            setState(() {
                              dm1[3] = val;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(40.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'Blood pressure?',
                      labelText: 'BP',
                    ),
                    onChanged: (String value) {
                      bp = int.parse(value);
                    },
                  )
                ],
              )),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "BP AREA ",
                      ),
                      width: Width),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "LEFT",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: BP[0],
                    onChanged: (bool val) {
                      setState(() {
                        BP[0] = val;
                      });
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                        "RIGHT SIDE",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: BP[1],
                    onChanged: (bool val) {
                      setState(() {
                        BP[1] = val;
                      });
                    }),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Btn(
                  text: "Haemorrhagic",
                  onPressed: () {
                    setState(() {
                      Haemorrhagic = true;
                      nHaemorrhagic = false;
                    });
                  },
                ),
              ),
              Expanded(
                child: Btn(
                  text: "non- Haemorrhagic",
                  onPressed: () {
                    setState(() {
                      Haemorrhagic = false;
                      nHaemorrhagic = true;
                    });
                  },
                ),
              )
            ],
          ),
          Visibility(
            visible: Haemorrhagic,
            child: Text("nothing"),
          ),
          Visibility(
            visible: nHaemorrhagic,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(width: Width, child: Text("cardiogenic")),
                      ),
                      Checkbox(
                          value: cardiogenic,
                          onChanged: (bool val) {
                            setState(() {
                              cardiogenic = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(width: Width, child: Text("neurogenic")),
                      ),
                      Checkbox(
                          value: neurogenic,
                          onChanged: (bool val) {
                            setState(() {
                              neurogenic = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("septic")),
                      ),
                      Checkbox(
                          value: septic,
                          onChanged: (bool val) {
                            setState(() {
                              septic = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: Width, child: Text("anaphylactic")),
                      ),
                      Checkbox(
                          value: anaphylactic,
                          onChanged: (bool val) {
                            setState(() {
                              anaphylactic = val;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Text("SHOCK",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ))),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("mental")),
                      ),
                      Checkbox(
                          value: mental,
                          onChanged: (bool val) {
                            setState(() {
                              mental = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(width: Width, child: Text("Tachycardia")),
                      ),
                      Checkbox(
                          value: Tachycardia,
                          onChanged: (bool val) {
                            setState(() {
                              Tachycardia = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              child: Text("Interventions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ))),


          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: Width, child: Text("Cardiac Monitor")),
                      ),
                      Checkbox(
                          value: Cardiac_Monitor,
                          onChanged: (bool val) {
                            setState(() {
                              Cardiac_Monitor = val;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(width: Width, child: Text("BP_Monitor")),
                      ),
                      Checkbox(
                          value: BP_Monitor,
                          onChanged: (bool val) {
                            setState(() {
                              BP_Monitor = val;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'SIZE',
                      labelText: 'SIZE',
                    ),
                    onChanged: (String value) {
                      size = int.parse(value);
                    },
                  )
                ],
              )),Container(
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_hospital),
                      hintText: 'SITE',
                      labelText: 'SITE',
                    ),
                    onChanged: (String value) {
                      site = value;
                    },
                  )
                ],
              )),
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