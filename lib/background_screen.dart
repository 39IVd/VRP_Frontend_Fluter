// import 'package:VRP_Frontend_Flutter/screens/login/login.dart';
// import 'package:flushbar/flushbar.dart';
// import 'package:flutter/material.dart';
// import 'package:VRP_Frontend_Flutter/utils/color_constants.dart';
// import 'package:VRP_Frontend_Flutter/screens/home/home_screen.dart';
// import 'package:VRP_Frontend_Flutter/utils/flushbar.dart';
// import 'package:VRP_Frontend_Flutter/screens/home/example_screen.dart';
// import 'package:VRP_Frontend_Flutter/screens/home/mypage_screen.dart';
// import 'package:VRP_Frontend_Flutter/screens/home/appbar.dart';

// class BackgroundScreen extends StatefulWidget {
//   final bool loginSuccess;
//   BackgroundScreen({Key key, this.loginSuccess}) : super(key: key);
//   @override
//   BackgroundScreenState createState() => BackgroundScreenState();
// }

// class BackgroundScreenState extends State<BackgroundScreen>
//     with SingleTickerProviderStateMixin {
//   bool beforeLogin = true;
//   @override
//   void initState() {
//     super.initState();
//     if (widget.loginSuccess == true) {
//       setState(() {
//         beforeLogin = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("before login : $beforeLogin");
//     return Scaffold(
//       appBar: beforeLogin ? beforeLoginAppbar() : afterLoginAppbar(),
//       body: beforeLogin ? ExampleScreen() : HomeScreen(),
//     );
//   }
// }
