import 'package:VRP_Frontend_Flutter/screens/login/login.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:VRP_Frontend_Flutter/utils/color_constants.dart';
import 'package:VRP_Frontend_Flutter/screens/home/home_screen.dart';
import 'package:VRP_Frontend_Flutter/utils/flushbar.dart';

class BackgroundScreen extends StatefulWidget {
  final bool loginSuccess;
  BackgroundScreen({Key key, this.loginSuccess}) : super(key: key);
  @override
  BackgroundScreenState createState() => BackgroundScreenState();
}

class BackgroundScreenState extends State<BackgroundScreen>
    with SingleTickerProviderStateMixin {
  bool beforeLogin = true;
  @override
  void initState() {
    super.initState();
    if (widget.loginSuccess == true) {
      setState(() {
        beforeLogin = false;
      });
    }
  }

  Widget beforeLoginAppbar() {
    return AppBar(
      automaticallyImplyLeading:
          MediaQuery.of(context).size.width < 1300 ? true : false,
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
          child: GestureDetector(
              child: Column(
                children: [Icon(Icons.login), Text('로그인')],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              }),
        ),
        SizedBox(width: 32),
        Container(
            padding: EdgeInsets.only(top: 5),
            child: GestureDetector(
                child: Column(
                  children: [Icon(Icons.supervised_user_circle), Text('회원가입')],
                ),
                onTap: () {
                  // TODO: 회원가입 페이지
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Login()),
                  // );
                })),
        SizedBox(width: 32),
      ],
      backgroundColor: ColorConstants.blue,
    );
  }

  Widget afterLoginAppbar() {
    return AppBar(
      automaticallyImplyLeading:
          MediaQuery.of(context).size.width < 1300 ? true : false,
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
          child: GestureDetector(
              child: Column(
                children: [Icon(Icons.account_circle), Text('내 정보')],
              ),
              onTap: () {
                //  TODO: my page로 이동
              }),
        ),
        SizedBox(width: 32),
        Container(
          padding: EdgeInsets.only(top: 5),
          child: GestureDetector(
              child: Column(
                children: [Icon(Icons.exit_to_app), Text('로그아웃')],
              ),
              onTap: () {
                FlushBar flushbar =
                    FlushBar(context: context, text: '로그아웃 되었어요');
                flushbar.showFlushbar();
                setState(() {
                  beforeLogin = true;
                });
              }),
        ),
        SizedBox(width: 32),
      ],
      backgroundColor: ColorConstants.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: beforeLogin ? beforeLoginAppbar() : afterLoginAppbar(),
      body: HomeScreen(),
    );
  }
}
