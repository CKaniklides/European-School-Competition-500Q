import 'package:flutter/material.dart';
import './cat1.dart';
import './cat2.dart';
import './cat3.dart';
import './cat4.dart';
import './cat5.dart';
import './cat6.dart';
import './cat7.dart';
import './cat8.dart';
import './cat9.dart';
import './cat10.dart';


class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[700],
        title: SafeArea(
          child: Text(
            'Choose a category',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => cat1questionpage()),
                    );
                  },
                  title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Η ιστορια της Ευρωπαϊκής Ένωσης',
                          style: new TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold),
//                              textAlign: TextAlign.center,
                        ),
                      ]
                  ),
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat2questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Τα θεσμικά όργανα της ΕΕ',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat3questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Ευρωπαϊκό Κοινοβούλιο',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat4questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Κράτη μέλη',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat5questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Νέοι - Ευρωπαϊκά Προγράμματα',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat6questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Περιβάλλον',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat7questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Ευρώ – ΟΝΕ – Νομισματικά θέματα',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat8questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Δικαιώματα Ευρωπαίων πολιτών',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat9questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Εξ. πολιτική & πολιτική ασφαλείας',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),

          Container(
            height: 49,
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => cat10questionpage()),
                      );
                    },
                    title: Center(
                      child: Text(
                        'Γενικές γνώσεις',
                        style: new TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
          ),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
