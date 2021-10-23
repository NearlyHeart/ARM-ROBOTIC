import 'package:arm_app/Dashboard/BoardScreen.dart';
import 'package:arm_app/Service/Database.dart';
import 'package:arm_app/Setting.dart';

import 'package:flutter/material.dart';

//import 'package:flutter/services.dart';
class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // final Database database = Database();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 300,
              width: 400,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
              },
              child: Text('SETTING', style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                  primary: Color(0xFF061C31)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Board()));
              },
              child: Text(
                'Checking objects',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(55, 10, 55, 10),
                  primary: Color(0xFF061C31)),
            ),
          ],
        ),
      ),
    );
  }
}
