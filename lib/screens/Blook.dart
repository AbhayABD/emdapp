import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'Blisten.dart';
import 'Bfeel.dart';
import 'home.dart';

class Blook extends StatefulWidget {
  static String id = "airway";
  @override
  BlookState createState() => BlookState();
}
double Width = 124;
bool cyno, chest, resp, sym,vis1=false,vis2=false,vis3=false,vis4=false;
List<bool> chestList  = [
  false,
  false,
  false,
  false,
  false,
];
List<bool> respList = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
List<bool> symList = [
  false,
  false,
  false
];
List<bool> cynoList = [
  false,
  false,
];


class BlookState extends State<Blook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Breathing Look"),
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
                      new MaterialPageRoute(builder: (context) => new BFeel()));
                },
              )),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Cynosis",
              style: TextStyle(fontWeight: FontWeight.bold),
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
                    groupValue: cyno,
                    onChanged: (bool value) {
                      setState(() {
                        cyno = value;
                        vis4 = false;
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
                    groupValue: cyno,
                    onChanged: (bool value) {
                      setState(() {
                        cyno = value;
                        vis4 =true;
                      });
                    },
                  ),
                ),
              ),
            ],
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
                              "peripheral",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: cynoList[0],
                          onChanged: (bool val) {
                            setState(() {
                              cynoList[0]= val;
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
                              "Central",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: cynoList[1],
                          onChanged: (bool val) {
                            setState(() {
                              cynoList[1] = val;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Chest Cage",
              style: TextStyle(fontWeight: FontWeight.bold),
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
                    groupValue: chest,
                    onChanged: (bool value) {
                      setState(() {
                        chest = value;
                        vis1 = false;
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
                    groupValue: chest,
                    onChanged: (bool value) {
                      setState(() {
                        chest = value;
                        vis1 =true;
                      });
                    },
                  ),
                ),
              ),
            ],
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
                              "Deformity",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: chestList[0],
                          onChanged: (bool val) {
                            setState(() {
                              chestList[0]= val;
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
                              "Barrel chest",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: chestList[1],
                          onChanged: (bool val) {
                            setState(() {
                              chestList[1] = val;
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
                              "Funnel Chest",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: chestList[2],
                          onChanged: (bool val) {
                            setState(() {
                              chestList[2] = val;
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
                              "Pigeon Chest",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: chestList[3],
                          onChanged: (bool val) {
                            setState(() {
                              chestList[3] = val;
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
                              "Kyphoscoliosis",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: chestList[4],
                          onChanged: (bool val) {
                            setState(() {
                              chestList[4] = val;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Respiratory",
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
                    groupValue: resp,
                    onChanged: (bool value) {
                      setState(() {
                        resp = value;
                        vis2 = false;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListTile(
                  title: const Text('Abnormal'),
                  leading: Radio(
                    value: false,
                    groupValue: resp,
                    onChanged: (bool value) {
                      setState(() {
                        resp = value;
                        vis2 =true;
                      });
                    },
                  ),
                ),
              ),
            ],
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
                              "Bradypnea",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value:respList[0],
                          onChanged: (bool val) {
                            setState(() {
                              respList[0]= val;
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
                              "Tachypnea",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: respList[1],
                          onChanged: (bool val) {
                            setState(() {
                              respList[1] = val;
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
                              "Dyspnea",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: respList[2],
                          onChanged: (bool val) {
                            setState(() {
                              respList[2] = val;
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
                              "Hypoventilation",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: respList[3],
                          onChanged: (bool val) {
                            setState(() {
                              respList[3] = val;
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
                              "Hyperventilation",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: respList[4],
                          onChanged: (bool val) {
                            setState(() {
                              respList[4] = val;
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
                              "Paradoxical",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value:respList[5],
                          onChanged: (bool val) {
                            setState(() {
                              respList[5]= val;
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
                              "Kussmaul’s",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: respList[6],
                          onChanged: (bool val) {
                            setState(() {
                              respList[6] = val;
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
                              "Apnea",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: respList[7],
                          onChanged: (bool val) {
                            setState(() {
                              respList[7] = val;
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
                              "Cheyne-Stokes",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: respList[8],
                          onChanged: (bool val) {
                            setState(() {
                              respList[8] = val;
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
                              "Biot's Respiration",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: respList[9],
                          onChanged: (bool val) {
                            setState(() {
                              respList[9] = val;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Symmetrical chest movement",
              style: TextStyle(fontWeight: FontWeight.bold),
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
                    groupValue: sym,
                    onChanged: (bool value) {
                      setState(() {
                        sym = value;
                        vis3 = false;
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
                    groupValue: sym,
                    onChanged: (bool value) {
                      setState(() {
                        sym = value;
                        vis3 =true;
                      });
                    },
                  ),
                ),
              ),
            ],
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
                              "Nasal flaring",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: symList[0],
                          onChanged: (bool val) {
                            setState(() {
                              symList[0]= val;
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
                              "Mouth breathing nasal flaring",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: symList[1],
                          onChanged: (bool val) {
                            setState(() {
                              symList[1] = val;
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
                              "Accessory muscles",
                            ),
                            width: Width),
                      ),
                      Checkbox(
                          value: symList[2],
                          onChanged: (bool val) {
                            setState(() {
                              symList[2] = val;
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
