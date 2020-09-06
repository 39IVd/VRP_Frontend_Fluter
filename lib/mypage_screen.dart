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
import 'appbar.dart';

class MyPageScreen extends StatefulWidget {
  @override
  MyPageScreenState createState() => MyPageScreenState();
}

class MyPageScreenState extends State<MyPageScreen> {
  User user;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    user = dummyUserList[0];
    return Scaffold(
      appBar: homeAppbar(
          context: context, beforeLogin: false, currentPage: 'mypage_screen'),
      body: Column(
        children: [
          Center(
            child: Text(
              'MyPage',
              style: text_darkgrey(20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('이름 : ${user.userName}'),
              Text('이메일 : ${user.email}'),
              Text('직위 : ${user.role}'),
            ],
          )
        ],
      ),
    );
  }
}
