import 'package:arm_app/Constants.dart';
import 'package:arm_app/Dashboard/Check/Triangle.dart';
import 'package:arm_app/Dashboard/Check/Cube.dart';
import 'package:arm_app/Dashboard/Check/Cylinder.dart';
import 'package:arm_app/Dashboard/Check/Electronic.dart';
import 'package:arm_app/Homepage.dart';
import 'package:arm_app/Manual_R.dart';
import 'package:arm_app/ShowPosition.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ManalBar extends StatefulWidget {
  @override
  _ManalBarState createState() => _ManalBarState();
}

class _ManalBarState extends State<ManalBar> {
  int page = 0;
  final sreen = [
    Show_pos(),
    Manual(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Manual'),
          bottom: PreferredSize(
            preferredSize: Size(70.0, 70.0),
            child: TabBar(
              tabs: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Icon(Icons.crop_portrait_rounded, size: 30),
                      SizedBox(height: 5),
                      Text('Cylinder'),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Icon(Icons.stop, size: 30),
                      SizedBox(height: 5),
                      Text('Cube'),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
              onTap: (index) {
                setState(() {
                  page = index;
                });
              },
            ),
          ),
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   index: page,
        //   height: 50.0,
        //   items: <Widget>[
        //     // Icon(Icons.accessibility, size: 30),
        //     Icon(Icons.crop_portrait_rounded, size: 30),
        //     Icon(Icons.stop, size: 30),
        //     Icon(Icons.signal_cellular_4_bar_sharp, size: 30),
        //   ],
        //   color: bgAppbar,
        //   buttonBackgroundColor: bgAppbar,
        //   backgroundColor: bgColor,
        //   animationCurve: Curves.easeInExpo,
        //   animationDuration: Duration(milliseconds: 600),
        //   onTap: (index) {
        //     setState(() {
        //       page = index;
        //     });
        //   },
        //   letIndexChange: (index) => true,
        // ),
        body: sreen[page],
      ),
    );
  }
}
