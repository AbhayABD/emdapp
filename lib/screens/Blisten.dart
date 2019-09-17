import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'Blook.dart';
import 'Bfeel.dart';
import 'home.dart';

class Blisten extends StatefulWidget {
  @override
  _BlistenState createState() => _BlistenState();
}
double Width = 124;
bool right = false;
bool r = false;
bool left = false;
bool l = false;
List<List<bool>> areal = [
  [false,false,false,false,false]
];
List<List<bool>> inter = [
  [false, false, false],];
List<List<bool>> areas = [
  [false,false,false,false,false]
];
bool v = false;
bool bronchial = false;
bool Rhonchi = false;
bool wheeze = false;
bool stridor = false;
bool crackles = false;
bool friction = false;

bool nor = false;
bool abnor = false;
bool Tracheao = false;
bool bronch = false;

class _BlistenState extends State<Blisten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Breathing Listen"),
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
                          new MaterialPageRoute(builder: (context) => new Blook()));
                    },
                  )),
              Expanded(
                  child: Btn(
                    text: "Listen",
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Blisten()));
                    },
                  )),
              // SizedBox(width:18 ),
              Expanded(
                  child: Btn(
                    text: "Feel",
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => BFeel()));
                    },
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Btn(
                  text: "normal",
                  onPressed: () {
                    setState(() {
                      nor = true;
                      abnor = false;
                    });
                  },
                ),
              ),
              Expanded(
                child: Btn(
                  text: "abnormal",
                  onPressed: () {
                    setState(() {
                      nor = false;
                      abnor = true;
                    });
                  },
                ),
              )
            ],
          ),
          Visibility(
            visible: nor,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: Width,
                            child: Text("Tracheao-Bronchial")),
                      ),
                      Checkbox(
                          value: Tracheao,
                          onChanged: (bool val) {
                            setState(() {
                              Tracheao = val;
                            });
                          }),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: Width,
                                  child: Text("Bronchovesicular")),
                            ),
                            Checkbox(
                                value: bronch,
                                onChanged: (bool val) {
                                  setState(() {
                                    bronch = val;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: abnor,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(width: Width, child: Text("Rhonchi")),
                      ),
                      Checkbox(
                          value: Rhonchi,
                          onChanged: (bool val) {
                            setState(() {
                              Rhonchi = val;
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
                        Container(width: Width, child: Text("Wheeze")),
                      ),
                      Checkbox(
                          value: wheeze,
                          onChanged: (bool val) {
                            setState(() {
                              wheeze = val;
                            });
                          }),
                    ],
                  ),

                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(width: Width, child: Text("Stridor")),
                      ),
                      Checkbox(
                          value: stridor,
                          onChanged: (bool val) {
                            setState(() {
                              stridor = val;
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
                        Container(width: Width, child: Text("Crackels")),
                      ),
                      Checkbox(
                          value: crackles,
                          onChanged: (bool val) {
                            setState(() {
                              crackles = val;
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
                        Container(width: Width, child: Text("Friction rubs")),
                      ),
                      Checkbox(
                          value: friction,
                          onChanged: (bool val) {
                            setState(() {
                              friction = val;
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
                            child: Text(
                              "Bronchial",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: bronchial,
                          onChanged: (bool val) {
                            setState(() {
                              bronchial = val;
                              print(val);
                              if (val == true) {
                                v = true;
                              } else {
                                v = false;
                              }
                            });
                          }),
                    ],
                  ),
                ),
                Visibility(
                  visible: v,
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
                                    "tubular",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: inter[0][0],
                                onChanged: (bool val) {
                                  setState(() {
                                    inter[0][0]= val;
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
                                    "cavernous",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: inter[0][1],
                                onChanged: (bool val) {
                                  setState(() {
                                    inter[0][1] = val;
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
                                    "amphoric",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: inter[0][2],
                                onChanged: (bool val) {
                                  setState(() {
                                    inter[0][2] = val;
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
                              "Right",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: right,
                          onChanged: (bool val) {
                            setState(() {
                              right = val;
                              print(val);
                              if (val == true) {
                                r = true;
                              } else {
                                r = false;
                              }
                            });
                          }),
                    ],
                  ),
                ),
                Visibility(
                  visible: r,
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
                                    "Upper",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areas[0][0],
                                onChanged: (bool val) {
                                  setState(() {
                                    areas[0][0]= val;
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
                                    "Middle",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areas[0][1],
                                onChanged: (bool val) {
                                  setState(() {
                                    areas[0][1] = val;
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
                                    "Lower lobes",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areas[0][2],
                                onChanged: (bool val) {
                                  setState(() {
                                    areas[0][2] = val;
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
                                    "Axilla",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areas[0][3],
                                onChanged: (bool val) {
                                  setState(() {
                                    areas[0][3] = val;
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
                                    "Interscapula",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areas[0][4],
                                onChanged: (bool val) {
                                  setState(() {
                                    areas[0][4] = val;
                                  });
                                }),
                          ],
                        ),
                      )
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
                              "left",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: left,
                          onChanged: (bool val) {
                            setState(() {
                              left = val;
                              print(val);
                              if (val == true) {
                                l = true;
                              } else {
                                l = false;
                              }
                            });
                          }),
                    ],
                  ),
                ),
                Visibility(
                  visible: l,
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
                                    "Upper",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areal[0][0],
                                onChanged: (bool val) {
                                  setState(() {
                                    areal[0][0]= val;
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
                                    "Middle",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areal[0][1],
                                onChanged: (bool val) {
                                  setState(() {
                                    areal[0][1] = val;
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
                                    "Lower lobes",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areal[0][2],
                                onChanged: (bool val) {
                                  setState(() {
                                    areal[0][2] = val;
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
                                    "Axilla",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areal[0][3],
                                onChanged: (bool val) {
                                  setState(() {
                                    areal[0][3] = val;
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
                                    "Interscapula",
                                  ),
                                  width: Width),
                            ),
                            Checkbox(
                                value: areal[0][4],
                                onChanged: (bool val) {
                                  setState(() {
                                    areal[0][4] = val;
                                  });
                                }),
                          ],
                        ),
                      )
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

