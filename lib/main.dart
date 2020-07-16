import 'package:european_school_competition_ck/home.dart';  //for future updates - CATEGORIES
import 'package:european_school_competition_ck/splash.dart';
import 'package:european_school_competition_ck/start.dart';  //for future updates - CATEGORIES
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}
