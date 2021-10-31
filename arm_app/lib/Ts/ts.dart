import 'package:arm_app/Constants.dart';
import 'package:arm_app/Dashboard/Check/Triangle.dart';
import 'package:arm_app/Dashboard/Check/Cube.dart';
import 'package:arm_app/Dashboard/Check/Cylinder.dart';
import 'package:arm_app/Dashboard/Check/Electronic.dart';
import 'package:arm_app/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int page = 0;
  final sreen = [
    Cylinder(),
    Cube(),
    Equilateral_triangle(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: page,
        height: 50.0,
        items: <Widget>[
          // Icon(Icons.accessibility, size: 30),
          Icon(Icons.crop_portrait_rounded, size: 30),
          Icon(Icons.stop, size: 30),
          Icon(Icons.signal_cellular_4_bar_sharp, size: 30),
        ],
        color: bgAppbar,
        buttonBackgroundColor: bgAppbar,
        backgroundColor: bgColor,
        animationCurve: Curves.easeInExpo,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: sreen[page],
    );
  }
}
