import 'dart:async' show Future;
import 'package:VRP_Frontend_Flutter/utils/flushbar.dart';
import 'package:VRP_Frontend_Flutter/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:VRP_Frontend_Flutter/screens/dashboard/dashboard.dart';
import 'package:VRP_Frontend_Flutter/screens/forms/form.dart';
import 'package:VRP_Frontend_Flutter/screens/hero/hero_screen.dart';
import 'package:VRP_Frontend_Flutter/utils/color_constants.dart';
import 'package:VRP_Frontend_Flutter/objects/event.dart';
import 'package:VRP_Frontend_Flutter/objects/user.dart';
import 'package:VRP_Frontend_Flutter/screens/event/event_detail_screen.dart';
import 'package:VRP_Frontend_Flutter/appbar.dart';

class ExampleScreen extends StatefulWidget {
  @override
  ExampleScreenState createState() => ExampleScreenState();
}

class ExampleScreenState extends State<ExampleScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
          context: context, beforeLogin: true, currentPage: 'example_screen'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '예시 화면',
              style: text_darkgrey(30),
            ),
          ),
        ],
      ),
    );
  }
}
