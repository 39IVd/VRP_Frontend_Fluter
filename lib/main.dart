import 'package:flutter/material.dart';
import 'package:VRP_Frontend_Flutter/screens/home/home_screen.dart';
import 'package:VRP_Frontend_Flutter/screens/login/login.dart';
import 'screens/home/background_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      '/': (BuildContext context) => BackgroundScreen(),
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
