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

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int active = 0;
  List<Event> eventList = dummyEventList;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 3, initialIndex: 0)
      ..addListener(() {
        setState(() {
          active = tabController.index;
        });
      });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // eventList = dummyEventList;
    return Scaffold(
      // body: Column(
      //   children: [
      //     Container(

      //       child: GridView.count(
      //         crossAxisCount: eventList.length,
      //         children: <Widget>[
      //           // Container()
      //           for (var i = 0; i < eventList.length; i++) _gridItems(eventList[i])
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      appBar: homeAppbar(
          context: context, beforeLogin: false, currentPage: 'home_screen'),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                // TODO: 사건 등록 페이지로 이동
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Event_DetailScreen()));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '새로운 사건 등록',
                    style: text_white(20),
                  ),
                ),
              ),
            ),
            Container(
                height: 500,
                child: GridView.count(
                  physics: ScrollPhysics(),
                  crossAxisCount: eventList.length,
                  children: <Widget>[
                    for (var i = 0; i < eventList.length; i++)
                      _gridEventItems(eventList[i])
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _gridEventItems(Event eventItem) {
//     사건명
// 일시 상태
// 현장 사진 (있을 시, 없으면 default image)
// 설명(20자)
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Event_DetailScreen()));
          FlushBar(context: context, text: '${eventItem.eventName}의 상세 페이지입니다')
              .showFlushbar();
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(eventItem.eventName, style: text_darkgrey(15)),
              Image.asset(
                'images/dummy/event_default.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
              Container(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('날짜 : ${eventItem.date}', style: text_darkgrey(15)),
                  Container(width: 15),
                  Text(eventItem.status, style: text_darkgrey(15)),
                ],
              ),
              Container(height: 15),
              Text(eventItem.description, style: text_darkgrey(15)),
            ],
          ),
        ),
      ),
    );
  }

  Widget listDrawerItems(bool drawerStatus) {
    return ListView(
      children: <Widget>[
        FlatButton(
          color: tabController.index == 0 ? Colors.grey[100] : Colors.white,
          //color: Colors.grey[100],
          onPressed: () {
            tabController.animateTo(0);
            drawerStatus ? Navigator.pop(context) : print("");
          },

          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.dashboard),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: tabController.index == 1 ? Colors.grey[100] : Colors.white,
          onPressed: () {
            print(tabController.index);
            tabController.animateTo(1);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.exit_to_app),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Forms",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: tabController.index == 2 ? Colors.grey[100] : Colors.white,
          onPressed: () {
            tabController.animateTo(2);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.category),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Hero",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
