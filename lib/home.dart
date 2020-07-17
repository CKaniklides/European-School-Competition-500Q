import 'package:european_school_competition_ck/helpers.dart';
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
              fontSize: getRelativeSize(context, 7),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => cat1questionpage()),
                      );
                    },
                    title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Η ιστορια της Ευρωπαϊκής Ένωσης',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: getRelativeSize(context, 4.5),
                                fontWeight: FontWeight.bold),
//                              textAlign: TextAlign.center,
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat2questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Τα θεσμικά όργανα της ΕΕ',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat3questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Ευρωπαϊκό Κοινοβούλιο',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat4questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Κράτη μέλη',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat5questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Νέοι - Ευρωπαϊκά Προγράμματα',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat6questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Περιβάλλον',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat7questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Ευρώ – ΟΝΕ – Νομισματικά θέματα',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat8questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Δικαιώματα Ευρωπαίων πολιτών',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat9questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Εξ. πολιτική & πολιτική ασφαλείας',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(3.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cat10questionpage()),
                        );
                      },
                      title: Center(
                        child: Text(
                          'Γενικές γνώσεις',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: getRelativeSize(context, 4.5),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
