import 'package:VRP_Frontend_Flutter/screens/login/login.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:VRP_Frontend_Flutter/utils/color_constants.dart';
import 'package:VRP_Frontend_Flutter/home_screen.dart';
import 'package:VRP_Frontend_Flutter/utils/flushbar.dart';
import 'package:VRP_Frontend_Flutter/example_screen.dart';
import 'package:VRP_Frontend_Flutter/mypage_screen.dart';

Widget homeAppbar(
    {BuildContext context, bool beforeLogin, String currentPage}) {
  // currentPage : login, example_screen, home_screen, mypage_screen
  return AppBar(
    automaticallyImplyLeading: false,
    title:
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 32),
        child: Text(
          "VR Crimescnene Project",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'HelveticaNeue',
          ),
        ),
      ),
    ]),
    actions: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 5),
        child: beforeLogin
            ? GestureDetector(
                child: Column(
                  children: [Icon(Icons.login), Text('로그인')],
                ),
                onTap: () {
                  if (currentPage != 'login')
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                })
            : GestureDetector(
                child: Column(
                  children: [Icon(Icons.account_circle), Text('내 정보')],
                ),
                onTap: () {
                  if (currentPage != 'mypage_screen')
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPageScreen()),
                    );
                }),
      ),
      SizedBox(width: 32),
      Container(
          padding: EdgeInsets.only(top: 5),
          child: beforeLogin
              ? GestureDetector(
                  child: Column(
                    children: [
                      Icon(Icons.supervised_user_circle),
                      Text('회원가입')
                    ],
                  ),
                  onTap: () {
                    // TODO: 회원가입 페이지
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Login()),
                    // );
                  })
              : GestureDetector(
                  child: Column(
                    children: [Icon(Icons.exit_to_app), Text('로그아웃')],
                  ),
                  onTap: () {
                    FlushBar flushbar =
                        FlushBar(context: context, text: '로그아웃 되었어요');
                    flushbar.showFlushbar();
                    // Navigator.of(context).pop();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ExampleScreen()),
                    );
                    // setState(() {
                    //   beforeLogin = true;
                    // });
                  })),
      SizedBox(width: 32),
    ],
    backgroundColor: ColorConstants.blue,
  );
}
