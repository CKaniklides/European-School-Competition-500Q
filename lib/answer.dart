import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//It also works with StatefulWidget
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Container(
      height: 80.0,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: RaisedButton(
          onPressed: selectHandler,
          child: Text(
            answerText,
            style: new TextStyle(
                color: Colors.black,
                fontSize: 21.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
