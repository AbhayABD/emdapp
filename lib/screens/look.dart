import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'listen.dart';
import 'feel.dart';
import 'home.dart';

bool swelling = false, deformity = false, injuries = false, others = false;
bool secretions =false,vomiting =false,blood =false;

class ALook extends StatefulWidget {
  @override
  _ALookState createState() => _ALookState();
}
bool patency;
bool use = false, fb = false, st = false;
bool v1 = false, v2 =false, v3=false, v4=false;
bool s1 =false, s2=false, s3=false, s4=false;
List<List<bool>> forbod = [
  [false, false],
  [false, false],
  [false, false],
  [false, false],
];
List<List<bool>> softis = [
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
  [false, false, false],
];

class _ALookState extends State<ALook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Airway Look"),
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
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Btn(
                text: "Patency",
                onPressed: () {
                  setState(() {
                    use = false;
                    patency = true;
                  });
                },
              )),
              Expanded(
                  child: Btn(
                      text: "Obsrtuct",
                      onPressed: () {
                        setState(() {
                          use = true;
                        });
                      })),
            ],
          ),
          Visibility(
              visible: use,
              child: Column(
                children: <Widget>[
                  Btn(
                    text: "Foriegn Bodies",
                    onPressed: () {
                      setState(() {
                        fb = true;
                        st = false;
                      });
                    },
                  ),
                  Btn(
                    text: "Soft Tissues",
                    onPressed: () {
                      setState(() {
                        st = true;
                        fb = false;
                      });
                    },
                  )
                ],
              )),

          Visibility(
              visible: fb,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Container(width: Width, child: Text("Swelling")),
                        ),
                        Checkbox(
                            value: swelling,
                            onChanged: (bool val) {
                              setState(() {
                                swelling = val;
                                v1 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: v1,
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
                                      "Suction",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: forbod[0][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      forbod[0][0] = val;
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
                                  value: forbod[0][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                     forbod[0][1]= val;
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
                              Container(width: Width, child: Text("Deformity")),
                        ),
                        Checkbox(
                            value: deformity,
                            onChanged: (bool val) {
                              setState(() {
                                deformity = val;
                                v2 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: v2,
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
                                      "Suction",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: forbod[1][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      forbod[1][0] = val;
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
                                  value: forbod[1][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      forbod[1][1]= val;
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
                          child: Container(width: Width, child: Text("Injury")),
                        ),
                        Checkbox(
                            value: injuries,
                            onChanged: (bool val) {
                              setState(() {
                                injuries = val;
                                v3 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: v3,
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
                                      "Suction",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: forbod[2][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      forbod[2][0] = val;
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
                                  value: forbod[2][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      forbod[2][1]= val;
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
                          child: Container(width: Width, child: Text("Others")),
                        ),
                        Checkbox(
                            value: others,
                            onChanged: (bool val) {
                              setState(() {
                                others = val;
                                v4 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: v4,
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
                                      "Suction",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: forbod[3][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      forbod[3][0] = val;
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
                                  value: forbod[3][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      forbod[3][1]= val;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),


          Visibility(
              visible: st,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Container(width: Width, child: Text("Secretions")),
                        ),
                        Checkbox(
                            value: secretions,
                            onChanged: (bool val) {
                              setState(() {
                                secretions = val;
                                s1 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: s1,
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
                                  value: softis[0][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[0][0]= val;
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
                                  value: softis[0][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[0][1] = val;
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
                                  value: softis[0][2],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[0][2] = val;
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
                          Container(width: Width, child: Text("Vomiting")),
                        ),
                        Checkbox(
                            value: vomiting,
                            onChanged: (bool val) {
                              setState(() {
                                vomiting = val;
                                s2 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: s2,
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
                                  value: softis[1][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[1][0]= val;
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
                                  value: softis[1][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[1][1] = val;
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
                                  value: softis[1][2],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[1][2] = val;
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
                          child: Container(width: Width, child: Text("Blood loss")),
                        ),
                        Checkbox(
                            value: blood,
                            onChanged: (bool val) {
                              setState(() {
                                blood = val;
                                s3 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: s3,
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
                                  value: softis[2][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[2][0]= val;
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
                                  value: softis[2][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[2][1] = val;
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
                                  value: softis[2][2],
                                  onChanged: (bool val) {
                                    setState(() {
                                      softis[2][2] = val;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

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
