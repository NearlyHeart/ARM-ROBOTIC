import 'package:control_pad/views/joystick_view.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Manual extends StatefulWidget {
  @override
  _ManualState createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                ">",
                style: TextStyle(fontSize: 50),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(0, 30, 10, 30),
                  primary: Color(0xFF061C31)),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "<",
                style: TextStyle(fontSize: 50),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                  primary: Color(0xFF061C31)),
            ),
            SizedBox(height: 70),
            JoystickView(),
          ],
        ),
      ),
    );
  }
}
