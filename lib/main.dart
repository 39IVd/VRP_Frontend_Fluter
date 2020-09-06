import 'package:VRP_Frontend_Flutter/example_screen.dart';
import 'package:VRP_Frontend_Flutter/home_view.dart';
import 'package:flutter/material.dart';
import 'package:VRP_Frontend_Flutter/home_screen.dart';
import 'package:VRP_Frontend_Flutter/screens/login/login.dart';
import 'background_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      '/': (BuildContext context) => HomeView(),
      // '/home': (BuildContext context) => HomeScreen(),
    };
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
      theme: ThemeData(fontFamily: 'HelveticaNeue'),
      debugShowCheckedModeBanner: false,
      title: 'VR Crimescene Project',
    );
  }
}
