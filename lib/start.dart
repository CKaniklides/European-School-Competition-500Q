import 'package:european_school_competition_ck/helpers.dart';
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
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.indigoAccent[700],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/eu_flag.jpg',
                height: 200,
              ),
            ),
            Expanded(
              child: Text(
                'Ευρωπαϊκός Σχολικός\nΔιαγωνισμός',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => questionpage()),
                          );
                        },
                        child: Text(
                          'Play',
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: getRelativeSize(context, 12),
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
//THE FOLLOWING COLUMN IS FOR THE CATEGORIES OPTION THAT WILL BE ADDED SOON
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homepage()),
                          );
                        },
                        child: Text(
                          'Categories',
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: getRelativeSize(context, 12),
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
