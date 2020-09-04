import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:VRP_Frontend_Flutter/utils/styles.dart';

class FlushBar {
  BuildContext context;
  String text;
  FlushBar({BuildContext context, String text}) {
    this.context = context;
    this.text = text;
  }
  Widget showFlushbar() {
    return Flushbar(
      messageText: Text(
        text,
        style: text_white(15),
      ),
      icon: Icon(
        Icons.check,
        color: Colors.white,
      ),
      duration: Duration(seconds: 2),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      borderRadius: 20,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    )..show(context);
  }
}
