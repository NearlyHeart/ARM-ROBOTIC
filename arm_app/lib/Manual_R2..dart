// @dart=2.9
import 'package:arm_app/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:control_pad/views/joystick_view.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Manual2 extends StatefulWidget {
  @override
  _Manual2State createState() => _Manual2State();
}

class _Manual2State extends State<Manual2> {
  // final Manual_db = FirebaseFirestore.instance.collection("Manual");
  final Manual_Ref = FirebaseDatabase.instance.reference();

  int value;

  void upvalue0() {
    Manual_Ref.child("axis0").set({'valu': currentSliderValue0});
  }

  void upvalue1() {
    Manual_Ref.child("axis1").set({'valu': currentSliderValue1});
  }

  void upvalue2() {
    Manual_Ref.child("axis2").set({'valu': currentSliderValue2});
  }

  void upvalue3() {
    Manual_Ref.child("axis3").set({'valu': currentSliderValue3});
  }

  void upvalue4() {
    Manual_Ref.child("axis4").set({'valu': currentSliderValue4});
  }

  void upvalue5() {
    Manual_Ref.child("axis5").set({'valu': currentSliderValue5});
  }

  void get() {
    Manual_Ref.child("axiso/value").onValue.listen((event) {
      final int currentSliderValue0 = event.snapshot.value;
    });
  }

  double currentSliderValue0 = 0;
  double currentSliderValue1 = 0;
  double currentSliderValue2 = 0;
  double currentSliderValue3 = 0;
  double currentSliderValue4 = 0;
  double currentSliderValue5 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arm Control")),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "SETTING AXIS",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: bgAppbar,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'ข้อต่อที่ 0',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        Slider(
                          value: currentSliderValue0,
                          min: 0,
                          max: 180,
                          divisions: 180,
                          label: currentSliderValue0.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              currentSliderValue0 = value;
                            });
                            upvalue0();
                          },
                        ),
                        Text(
                          currentSliderValue0.round().toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'องศา',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                    ////////////////////////////////////////////////////////////
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'ข้อต่อที่ 1',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        Slider(
                          value: currentSliderValue1,
                          min: 0,
                          max: 180,
                          divisions: 180,
                          label: currentSliderValue1.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              currentSliderValue1 = value;
                            });
                            upvalue1();
                          },
                        ),
                        Text(
                          currentSliderValue1.round().toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'องศา',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                    ////////////////////////////////////////////////////////////
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'ข้อต่อที่ 2',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        Slider(
                          value: currentSliderValue2,
                          min: 0,
                          max: 180,
                          divisions: 180,
                          label: currentSliderValue2.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              currentSliderValue2 = value;
                            });
                            upvalue2();
                          },
                        ),
                        Text(
                          currentSliderValue2.round().toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'องศา',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                    ////////////////////////////////////////////////////////////
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'ข้อต่อที่ 3',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        Slider(
                          value: currentSliderValue3,
                          min: 0,
                          max: 180,
                          divisions: 180,
                          label: currentSliderValue3.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              currentSliderValue3 = value;
                            });
                            upvalue3();
                          },
                        ),
                        Text(
                          currentSliderValue3.round().toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'องศา',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                    ////////////////////////////////////////////////////////////
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'ข้อต่อที่ 4',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        Slider(
                          value: currentSliderValue4,
                          min: 0,
                          max: 180,
                          divisions: 180,
                          label: currentSliderValue4.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              currentSliderValue4 = value;
                            });
                            upvalue4();
                          },
                        ),
                        Text(
                          currentSliderValue4.round().toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'องศา',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                    ////////////////////////////////////////////////////////////
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'ข้อต่อที่ 5',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        Slider(
                          value: currentSliderValue5,
                          min: 0,
                          max: 180,
                          divisions: 180,
                          label: currentSliderValue5.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              currentSliderValue5 = value;
                            });
                            upvalue5();
                          },
                        ),
                        Text(
                          currentSliderValue5.round().toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'องศา',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
