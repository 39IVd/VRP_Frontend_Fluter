import 'package:VRP_Frontend_Flutter/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'centered_view.dart';
import 'example_details.dart';
import 'call_to_action.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
                child: Row(
              children: [
                ExampleDetails(),
                Expanded(
                    child: Center(
                  child: CallToAction('View Details'),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
