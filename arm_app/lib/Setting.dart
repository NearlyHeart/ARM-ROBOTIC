import 'package:arm_app/Auto.dart';
import 'package:arm_app/Auto2.dart';
import 'package:arm_app/Manual_R.dart';
import 'package:arm_app/Keep/Manual_R2..dart';
import 'package:flutter/material.dart';

import 'Constants.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        backgroundColor: bgAppbar,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),

              // Text(
              //   "_____________________________________________",
              //   style: const TextStyle(
              //       fontWeight: FontWeight.bold, color: Colors.white),
              // ),
              Text(
                "การควบคุมแขนกล",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                "________________________________",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Icon(Icons.cached, size: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Auto2()));
                },
                child: Text(
                  'ควบคุมอัตโนมัติ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    primary: Color(0xFF061C31)),
              ),
              SizedBox(height: 60),
              Icon(Icons.build_circle_outlined, size: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Manual()));
                },
                child: Text(
                  'ควบคุมด้วยตนอง',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    primary: Color(0xFF061C31)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
