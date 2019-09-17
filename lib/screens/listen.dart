import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'look.dart';
import 'feel.dart';
import 'package:test3/components/checkbox.dart';
import 'home.dart';

class AListen extends StatefulWidget {
  @override
  _AListenState createState() => _AListenState();
}

bool sounds = false;
bool snoring = false;
bool strider = false;
bool gurfling = false;
bool grunting = false;
bool h = false;
bool incomprehensive = false;
bool suction = false;
double Width = 124;
bool headTilt = false, chinLift = false, jawThrust = false;
//List<bool> vis = [false,false,false,false,false,false,false,false,false,false,false];
bool vis0 = false,vis1 = false,vis2 =false,vis3 =false,vis4 =false,vis5 =false,vis6 =false,vis7 =false;

List<List<bool>> intervention = [
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
];

class _AListenState extends State<AListen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Airway Listen"),
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
                      new MaterialPageRoute(builder: (context) => new ALook()));
                },
              )),
              Expanded(
                  child: Btn(
                text: "Listen",
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new AListen()));
                },
              )),
              // SizedBox(width:18 ),
              Expanded(
                  child: Btn(
                text: "Feel",
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => AFeel()));
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
                        "Sounds",
                      ),
                      width: Width),
                ),
                Checkbox(
                    value: sounds,
                    onChanged: (bool val) {
                      setState(() {
                        sounds = val;
                        print(val);
                        if (val == true) {
                         vis0 = true;
                        } else {
                          vis0 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: vis0,
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
                              "Head Tilt",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[0][0],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[0][0]= val;
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
                              "Chin Lift",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[0][1],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[0][1] = val;
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
                              "Jaw Thrust",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[0][2],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[0][2] = val;
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
                  child: Container(width: Width, child: Text("Snoring")),
                ),
                Checkbox(
                    value: snoring,
                    onChanged: (bool val) {
                      setState(() {
                        snoring = val;
                        if (val == true) {
                          vis1 = true;
                        } else {
                          vis1 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
         Visibility(
            visible: vis1,
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
                              "Head Tilt",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[1][0],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[1][0]= val;
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
                              "Chin Lift",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[1][1],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[1][1] = val;
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
                              "Jaw Thrust",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[1][2],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[1][2] = val;
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
                  child: Container(width: Width, child: Text("Strider")),
                ),
                Checkbox(
                    value: strider,
                    onChanged: (bool val) {
                      setState(() {
                        strider = val;
                        if (val == true) {
                          vis2 = true;
                        } else {
                          vis2 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
         Visibility(
            visible: vis2,
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
                              "Head Tilt",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[2][0],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[2][0]= val;
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
                              "Chin Lift",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[2][1],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[2][1] = val;
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
                              "Jaw Thrust",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[2][2],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[2][2] = val;
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
                  child: Container(width: Width, child: Text("Gnurfling")),
                ),
                Checkbox(
                    value: gurfling,
                    onChanged: (bool val) {
                      setState(() {
                        gurfling = val;
                        if (val == true) {
                          vis3 = true;
                        } else {
                          vis3 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
         Visibility(
            visible: vis3,
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
                              "Head Tilt",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[3][0],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[3][0]= val;
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
                              "Chin Lift",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[3][1],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[3][1] = val;
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
                              "Jaw Thrust",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[3][2],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[3][2] = val;
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
                  child: Container(width: Width, child: Text("Grunting")),
                ),
                Checkbox(
                    value: grunting,
                    onChanged: (bool val) {
                      setState(() {
                        grunting = val;
                        if (val == true) {
                          vis4 = true;
                        } else {
                          vis4 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: vis4,
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
                              "Head Tilt",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[4][0],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[4][0]= val;
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
                              "Chin Lift",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[4][1],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[4][1] = val;
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
                              "Jaw Thrust",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[4][2],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[4][2] = val;
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
                  child: Container(width: Width, child: Text("H")),
                ),
                Checkbox(
                    value: h,
                    onChanged: (bool val) {
                      setState(() {
                        h = val;
                        if (val == true) {
                          vis5 = true;
                        } else {
                          vis5 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: vis5,
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
                              "Head Tilt",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[5][0],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[5][0]= val;
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
                              "Chin Lift",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[5][1],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[5][1] = val;
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
                              "Jaw Thrust",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[5][2],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[5][2] = val;
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
                  child:
                      Container(width: Width, child: Text("Incomprehensive")),
                ),
                Checkbox(
                    value: incomprehensive,
                    onChanged: (bool val) {
                      setState(() {
                        incomprehensive = val;
                        if (val == true) {
                          vis6 = true;
                        } else {
                          vis6 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: vis6,
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
                              "Head Tilt",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[6][0],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[6][0]= val;
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
                              "Chin Lift",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[6][1],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[6][1] = val;
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
                              "Jaw Thrust",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[6][2],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[6][2] = val;
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
                  child: Container(width: Width, child: Text("Suction")),
                ),
                Checkbox(
                    value: suction,
                    onChanged: (bool val) {
                      setState(() {
                        suction = val;
                        if (val == true) {
                          vis7 = true;
                        } else {
                          vis7 = false;
                        }
                      });
                    }),
              ],
            ),
          ),
          Visibility(
            visible: vis7,
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
                              "Head Tilt",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[7][0],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[6][0]= val;
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
                              "Chin Lift",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[7][1],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[7][1] = val;
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
                              "Jaw Thrust",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: intervention[7][2],
                          onChanged: (bool val) {
                            setState(() {
                              intervention[7][2] = val;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
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
