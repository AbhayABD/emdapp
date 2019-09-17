import 'package:flutter/material.dart';
import 'package:test3/components/button.dart';
import 'listen.dart';
import 'look.dart';
import 'package:pdf/pdf.dart';
import 'home.dart';
class AFeel extends StatefulWidget {
  @override
  _AFeelState createState() => _AFeelState();
}
bool patency;
bool v1 = false, v2 =false, v3=false, v4=false;
bool s1 =false, s2=false, s3=false, s4=false;
bool man = false;
bool nman = false;
bool fswelling = false;
bool fdeformity = false;
bool finjury = false;
bool fothers = false;
bool u1 = false, u2 =false, u3=false, u4=false;
bool t1 =false, t2=false, t3=false, t4=false;
List<List<bool>> fforbod = [
  [false, false],
  [false, false],
  [false, false],
  [false, false],
];

class _AFeelState extends State<AFeel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Airway Feel"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[

              Expanded(child: Btn(text: "Look", onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new ALook())
                );
              },)),
              Expanded(child: Btn(text: "Listen", onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new AListen())
                );
              },)),
              // SizedBox(width:18 ),
              Expanded(child: Btn(text: "Feel", onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                        AFeel())
                );
              },)),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Btn(
                  text: "manual",
                  onPressed: () {
                    setState(() {
                      man = true;
                      nman = false;

                    });
                  },
                ),
              ),
              Expanded(child: Btn(
                text: "not manual",
                onPressed: () {
                  setState(() {
                    man = false;
                    nman = true;
                  });
                },
              ),
              )
            ],),
          Visibility(
              visible: man,
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
                            value: fswelling,
                            onChanged: (bool val) {
                              setState(() {
                                fswelling = val;
                                u1 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: u1,
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
                                  value: fforbod[0][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      fforbod[0][0] = val;
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
                                  value: fforbod[0][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      fforbod[0][1]= val;
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
                            value: fdeformity,
                            onChanged: (bool val) {
                              setState(() {
                                fdeformity = val;
                                u2 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: u2,
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
                                  value: fforbod[1][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      fforbod[1][0] = val;
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
                                  value: fforbod[1][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      fforbod[1][1]= val;
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
                            value: finjury,
                            onChanged: (bool val) {
                              setState(() {
                                finjury = val;
                                u3 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: u3,
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
                                  value: fforbod[2][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      fforbod[2][0] = val;
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
                                  value: fforbod[2][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      fforbod[2][1]= val;
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
                            value: fothers,
                            onChanged: (bool val) {
                              setState(() {
                                fothers = val;
                                u4 = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: u4,
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
                                  value: fforbod[3][0],
                                  onChanged: (bool val) {
                                    setState(() {
                                      fforbod[3][0] = val;
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
                                  value: fforbod[3][1],
                                  onChanged: (bool val) {
                                    setState(() {
                                      fforbod[3][1]= val;
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
              visible : nman,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'enter the intervention manually?',
                      labelText: 'Interventation',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@') ? 'Do not use the @ char.' : null;
                    },
                  )
                ],
              )
          ),
          Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'enter other ?',
                  labelText: 'further Interventation',
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              )

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


      ),);
  }

}