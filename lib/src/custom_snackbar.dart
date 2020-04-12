import 'package:flutter/material.dart';

customSnackBar({@required GlobalKey<ScaffoldState> scaffoldKey,@required  String message, @required Color color,
  Duration duration}){

  scaffoldKey.currentState.showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: color,
    duration: duration??Duration(seconds: 5),
  ));

}