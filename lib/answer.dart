import 'package:european_school_competition_ck/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//It also works with StatefulWidget
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final Color color;

  Answer(this.selectHandler, this.answerText, {this.color});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: RaisedButton(
          onPressed: selectHandler,
          disabledColor: color,
          padding: EdgeInsets.all(20),
          child: Text(
            answerText,
            style: new TextStyle(
                color: Colors.black,
                fontSize: getRelativeSize(context, 5),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          color: color ?? Colors.amberAccent,
        ),
      ),
    );
  }
}
