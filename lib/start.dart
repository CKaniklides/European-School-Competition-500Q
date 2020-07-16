import 'package:european_school_competition_ck/home.dart'; //for future updates - CATEGORIES
import 'package:european_school_competition_ck/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class startpage extends StatefulWidget {
  @override
  _startpageState createState() => _startpageState();
}

class _startpageState extends State<startpage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
        backgroundColor: Colors.indigoAccent[700],
        body: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: Image.asset(
                  'assets/eu_flag.jpg',
                  height: 200.0,
                  width: 200.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  'Ευρωπαϊκός Σχολικός',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  'Διαγωνισμός',
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => questionpage()),
                      );
                    },
                    child: Text(
                      'Play',
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ],
          ),

//THE FOLLOWING COLUMN IS FOR THE CATEGORIES OPTION THAT WILL BE ADDED SOON
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100.0,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => homepage()),
                    );
                  },
                  child: Text(
                    'Categories',
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  color: Colors.amberAccent,
                ),
              ),
            ),
          ],
        ),

        ],)
    );
  }
}
