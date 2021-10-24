// @dart=2.9

import 'package:flutter/material.dart';

class Auto extends StatefulWidget {
  Auto({Key key}) : super(key: key);

  @override
  _AutoState createState() => _AutoState();
}

class _AutoState extends State<Auto> {
  int selectedServo;
  int selectedServo2;
  int selectedServo3;
  int selectedServo4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Auto"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      subtitle: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(
                            left: 0, top: 10, right: 0, bottom: 10),
                        width: 100.0,
                        height: 100,
                        child: Image.asset(
                          'assets/images/servo.png',
                          height: 100,
                          width: 50,
                        ),
                      ),
                      title: Text('Srevo'),
                      trailing: Container(
                        margin: EdgeInsets.only(
                            left: 0, top: 60, right: 0, bottom: 0),
                        child: Radio(
                          value: 1,
                          groupValue: selectedServo,
                          onChanged: (value) {
                            setState(() {
                              selectedServo = value;
                            });
                          },
                        ),
                      ),
                    ),
                    ///////////////////////////////////////////////////////////
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(
                            left: 0, top: 10, right: 0, bottom: 10),
                        width: 100.0,
                        height: 100,
                        child: Image.asset(
                          'assets/images/servo.png',
                          height: 70,
                          width: 50,
                        ),
                      ),
                      title: Text('Srevo'),
                      trailing: Radio(
                        value: 2,
                        groupValue: selectedServo2,
                        onChanged: (value) {
                          setState(() {
                            selectedServo2 = value;
                          });
                        },
                      ),
                    ),
                    ///////////////////////////////////////////////////////////
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(
                            left: 0, top: 10, right: 0, bottom: 10),
                        width: 100.0,
                        height: 100,
                        child: Image.asset(
                          'assets/images/servo.png',
                          height: 70,
                          width: 50,
                        ),
                      ),
                      title: Text('Srevo'),
                      trailing: Radio(
                        value: 2,
                        groupValue: selectedServo2,
                        onChanged: (value) {
                          setState(() {
                            selectedServo2 = value;
                          });
                        },
                      ),
                    ),
                    ///////////////////////////////////////////////////////////
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(
                            left: 0, top: 10, right: 0, bottom: 10),
                        width: 100.0,
                        height: 100,
                        child: Image.asset(
                          'assets/images/servo.png',
                          height: 70,
                          width: 50,
                        ),
                      ),
                      title: Text('Srevo'),
                      trailing: Radio(
                        value: 2,
                        groupValue: selectedServo2,
                        onChanged: (value) {
                          setState(() {
                            selectedServo2 = value;
                          });
                        },
                      ),
                    ),
                    ///////////////////////////////////////////////////////////
                    Row(
                      children: [
                        SizedBox(width: 100),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "ยกเลิก",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              // padding: EdgeInsets.fromLTRB(0, 20, 10, 20),
                              primary: Colors.red),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "ยืนยัน",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              // padding: EdgeInsets.fromLTRB(0, 20, 10, 20),
                              primary: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
