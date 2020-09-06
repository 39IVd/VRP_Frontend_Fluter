import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Container(),
            // TODO: image
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem('Login'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('About'),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
