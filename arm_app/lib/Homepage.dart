import 'package:arm_app/Dashboard/BoardScreen.dart';
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                child: Text('ตั้งค่าการควบคุม', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(55, 10, 55, 10),
                    primary: Color(0xFF061C31)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Board()));
                },
                child: Text(
                  'เช็คจำนวนวัตถุ',
                  style: TextStyle(fontSize: 20),
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
