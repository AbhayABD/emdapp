import 'package:flutter/material.dart';
import 'home.dart';
import 'package:test3/components/button.dart';
class DisplayMews extends StatefulWidget {
  @override
  _DisplayMewsState createState() => _DisplayMewsState();
}

Mews obj = new Mews();

class _DisplayMewsState extends State<DisplayMews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MEWS")),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                  color: obj.color,
                  child: Center(child: Text(obj.score.toString())))),
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

class Mews {
  int score = 56;
  Color color = Colors.red;
  int pulse, rr, cns, sbp;
  double temp;

  int pulseScore() {
    int pscore = 0;
    if ((pulse <= 40) || (pulse >= 111 && pulse < 129))
      pscore = 2;
    else if ((pulse >= 41 && pulse < 51) || (pulse >= 101 && pulse < 110))
      pscore = 1;
    else if (pulse >= 51 && pulse < 100)
      pscore = 0;
    else
      pscore = 3;

    return pscore;
  }

  int rrScore() {
    int rrscore = 0;
    if (rr <= 8 || (rr >= 21 && rr <= 29))
      rrscore = 2;
    else if (rr >= 9 && rr <= 14)
      rrscore = 0;
    else if (rr >= 15 && rr <= 20)
      rrscore = 1;
    else
      rrscore = 3;

    return rrscore;
  }

  int tempScore() {
    int tscore;
    if (temp <= 35 || temp >= 38)
      tscore = 2;
    else if (temp >= 35.1 && temp <= 37.9) tscore = 0;
    return tscore;
  }

  int sysBPscore() {
    int bpscore = 0;
    if (sbp <= 70)
      bpscore = 3;
    else if ((sbp <= 71 && sbp >= 80) || (sbp >= 200))
      bpscore = 2;
    else
      bpscore = 1;

    return bpscore;
  }

  void calMewScore() {
    score = tempScore() + sysBPscore() + pulseScore() + this.cns;
    if (score >= 6)
      color = Colors.red;
    else if (score >= 3 && score <= 5)
      color = Colors.yellow;
    else
      this.color = Colors.green;
  }
}
