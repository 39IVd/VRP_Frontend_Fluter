import 'package:flutter/material.dart';

class ExampleDetails extends StatelessWidget {
  const ExampleDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'VR Crimescene Project',
            style:
                TextStyle(fontWeight: FontWeight.w600, fontSize: 50, height: 1),
          ),
          SizedBox(height: 30),
          Text(
            'Konkuk Univ. Graduation Project',
            style: TextStyle(fontSize: 20, height: 2),
          )
        ],
      ),
    );
  }
}
