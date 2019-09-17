import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'Clisten.dart';
import 'Clook.dart';
import 'home.dart';


class Cfeel extends StatefulWidget {
  @override
  _CfeelState createState() => _CfeelState();
}

bool l, r, right=false, left=false;
bool radf = false;
bool radnf = false;
bool cortf = false;
bool cortnf = false;
bool Rate = false;
double Width = 124;
List<List<bool>> rate = [
  [false, false]
];
List<List<bool>> Quality = [
  [false, false, false, false],
];

List<List<bool>> Pulses = [
  [false, false, false],
];
List<List<bool>> Absent = [
  [false, false, false],
  [false,false,false,false]
];
bool regularity = false;
List<List<bool>> Regularity = [
  [false, false]
];
bool quality = false;
bool pulses = false;
bool equal = false;
bool absent = false;
bool decreased = false;
bool Right = false;
bool Left = false;

bool nor = false;
bool abnor = false;
bool Tracheao = false;
bool bronch = false;

class _CfeelState extends State<Cfeel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circulatory Feel"),
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
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new CListen()));
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
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Btn(
                  text: "Radial Felt",
                  onPressed: () {
                    setState(() {
                      radf = true;
                      radnf = false;
                    });
                  },
                ),
              ),
              Expanded(
                child: Btn(
                  text: "Radial NotFelt",
                  onPressed: () {
                    setState(() {
                      radf = false;
                      radnf = true;
                    });
                  },
                ),
              )
            ],
          ),
          Visibility(
            visible: radf,
            child: Text('Nothing'),
          ),
          Visibility(
            visible: radnf,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Btn(
                    text: "Carotid Felt",
                    onPressed: () {
                      setState(() {
                        cortf = true;
                        cortnf = false;
                        Right=false;Left=false;equal = false;absent=false;


                      });
                    },
                  ),
                ),
                Expanded(
                  child: Btn(
                    text: "Carotid NotFelt",
                    onPressed: () {
                      setState(() {
                        cortf = false;
                        cortnf = true;
                        Right=false;Left=false;equal = false;absent=false;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: cortnf,
            child: Text('Start CPR'),

          ),
          Visibility(
              visible: cortf,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              child: Text(
                                "Rate",
                              ),
                              width: Width),
                        ),
                        Checkbox(
                            value: Rate,
                            onChanged: (bool val) {
                              setState(() {
                                Rate = val;
                                print(val);
                                if (val == true) {
                                  Rate = true;
                                } else {
                                  Rate = false;
                                }
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: Rate,
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
                                      "Tachycardia",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: rate[0][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      rate[0][0]= val;
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
                                      "Bradycardia",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: rate[0][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      rate[0][1] = val;
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
                          child: Container(width: Width, child: Text("Quality")),
                        ),
                        Checkbox(
                            value: quality,
                            onChanged: (bool val) {
                              setState(() {
                                if (val == true) {
                                  quality = true;
                                } else {
                                  quality = false;
                                }
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: quality,
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
                                  value: Quality[0][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Quality[0][0]= val;
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
                                      "weak",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Quality[0][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Quality[0][1] = val;
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
                                      "thready",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Quality[0][2],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Quality[0][2] = val;
                                    });
                                  }),
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    child: Text(
                                      "bounding",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Quality[0][3],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Quality[0][3] = val;
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
                          child: Container(width: Width, child: Text("Regularity")),
                        ),
                        Checkbox(
                            value: regularity,
                            onChanged: (bool val) {
                              setState(() {
                                regularity = val;
                                if (val == true) {
                                  regularity = true;
                                } else {
                                  regularity = false;
                                }
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: regularity,
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
                                      "Regular",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Regularity[0][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Regularity[0][0]= val;
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
                                      "Iregular",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Regularity[0][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Regularity[0][1] = val;
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
                          child: Container(width: Width, child: Text("pulses")),
                        ),
                        Checkbox(
                            value: pulses,
                            onChanged: (bool val) {
                              setState(() {
                                pulses = val;
                                right = false;
                                left = false;
                                Right=false;Left=false;equal = false;absent=false;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: pulses,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Btn(
                            text: "Equal",
                            onPressed: (){
                              setState(() {
                                equal = true;
                                absent = false;
                                decreased = false;
                                right = false;
                                left = false;
                                Right=false;Left=false;equal = false;absent=false;
                              });
                            },


                          ),
                        ),
                        Expanded(
                          child: Btn(
                            text: "Absetnt/decreased",
                            onPressed: (){
                              setState(() {
                                equal = false;
                                absent = true;
                                decreased = true;
                                right = false;
                                left = false;
                              });
                            },


                          ),
                        )
                      ],
                    ),

                  ),Visibility(
                    visible: absent,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Btn(
                            text: "right",
                            onPressed: (){
                              setState(() {
                                Right = true;
                                Left = false;
                              });
                            },


                          ),
                        ),
                        Expanded(
                          child: Btn(
                            text: "Left",
                            onPressed: (){
                              setState(() {
                                Left = true;
                                Right = false;

                              });
                            },


                          ),
                        )
                      ],
                    ),

                  ),
                  Visibility(
                    visible: equal,
                    child:  Text("nothing"),
                  ),

                  Visibility(
                    visible: Right,
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
                                      "Radial",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[0][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[0][0]= val;
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
                                      "Brachial",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[0][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[0][1] = val;
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
                                      "axillary",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[0][2],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[0][2] = val;
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
                                      "Femoral",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[1][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[1][0] = val;
                                    });
                                  }),
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    child: Text(
                                      "Poplitial",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[1][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[1][1] = val;
                                    });
                                  }),
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    child: Text(
                                      "Dorsalis",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[1][2],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[1][2] = val;
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
                                      "pedis",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[1][3],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[1][3] = val;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: Left,
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
                                      "Radial",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[0][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[0][0]= val;
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
                                      "Brachial",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[0][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[0][1] = val;
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
                                      "axillary",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[0][2],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[0][2] = val;
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
                                      "Femoral",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[1][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[1][0] = val;
                                    });
                                  }),
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    child: Text(
                                      "Poplitial",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[1][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[1][1] = val;
                                    });
                                  }),
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    child: Text(
                                      "Dorsalis",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[1][2],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[1][2] = val;
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
                                      "pedis",
                                    ),
                                    width: Width),
                              ),
                              Checkbox(
                                  value: Absent[1][3],
                                  onChanged: (bool val) {
                                    setState(() {
                                      Absent[1][3] = val;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),


                ],
              )
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