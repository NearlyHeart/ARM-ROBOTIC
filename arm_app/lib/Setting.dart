
import 'package:arm_app/Auto.dart';
import 'package:arm_app/Auto2.dart';
import 'package:arm_app/Manual_R.dart';
import 'package:arm_app/Manual_R2..dart';
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Auto2()));
              },
              child: Text('AUTOMATIC'),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  primary: Color(0xFF061C31)),
            ),
            const SizedBox(height: 20),
           ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Manual2()));
              },
              child: Text('MANUAL'),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  primary: Color(0xFF061C31)),
            ),
            
          ],
        ),
      ),
    );
  }
}
