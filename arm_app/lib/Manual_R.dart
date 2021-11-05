// @dart=2.9

import 'package:arm_app/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:control_pad/views/joystick_view.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Manual extends StatefulWidget {
  @override
  _ManualState createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  // final Manual_db = FirebaseFirestore.instance.collection("Manual");
  final Manual_Ref = FirebaseDatabase.instance.reference();
  DatabaseReference _Ref0 =
      FirebaseDatabase.instance.reference().child('axis0');
  DatabaseReference _Ref1 =
      FirebaseDatabase.instance.reference().child('axis1');
  DatabaseReference _Ref2 =
      FirebaseDatabase.instance.reference().child('axis2');
  DatabaseReference _Ref3 =
      FirebaseDatabase.instance.reference().child('axis3');
  DatabaseReference _Ref4 =
      FirebaseDatabase.instance.reference().child('axis4');
  DatabaseReference _Ref5 =
      FirebaseDatabase.instance.reference().child('axis5');

  _Get1() {
    _Ref0.onValue.listen((event) {
      final data = new Map<String, dynamic>.from(event.snapshot.value);
      final value = data['value'] as int;
      final angle = data['angle'] as int;
      setState(() {
        angle0 = angle;
        currentSliderValue0 = value.round().toDouble();
        print(' Value 0 from get : ${currentSliderValue0}');
        print(' angle0 from get : ${angle0}');
      });
    });
    _Ref1.onValue.listen((event) {
      final data = new Map<String, dynamic>.from(event.snapshot.value);
      final value = data['value'] as int;
      final angle = data['angle'] as int;
      setState(() {
        angle1 = angle;
        currentSliderValue1 = value.round().toDouble();
        print(' Value 1 from get : ${currentSliderValue1}');
      });
    });
    _Ref2.onValue.listen((event) {
      final data = new Map<String, dynamic>.from(event.snapshot.value);
      final value = data['value'] as int;
      final angle = data['angle'] as int;
      setState(() {
        angle2 = angle;
        currentSliderValue2 = value.round().toDouble();
        print('Value 2 from get : ${currentSliderValue1}');
      });
    });
    _Ref3.onValue.listen((event) {
      final data = new Map<String, dynamic>.from(event.snapshot.value);
      final value = data['value'] as int;
      final angle = data['angle'] as int;
      setState(() {
        angle3 = angle;
        currentSliderValue3 = value.round().toDouble();
        print('Value 3 from get : ${currentSliderValue3}');
      });
    });
    _Ref4.onValue.listen((event) {
      final data = new Map<String, dynamic>.from(event.snapshot.value);
      final value = data['value'] as int;
      final angle = data['angle'] as int;
      setState(() {
        angle4 = angle;
        currentSliderValue4 = value.round().toDouble();
        print('Value 4 from get : ${currentSliderValue4}');
      });
    });
    _Ref5.onValue.listen((event) {
      final data = new Map<String, dynamic>.from(event.snapshot.value);
      final value = data['value'] as int;
      final angle = data['angle'] as int;
      setState(() {
        angle5 = angle;
        currentSliderValue5 = value.round().toDouble();
        print('Value 5 from get : ${currentSliderValue5}');
      });
    });
  }

  @override
  void initState() {
    // init something.

    _Get1();
    super.initState();
  }

  int angle0 = 0;
  int angle1 = 0;
  int angle2 = 0;
  int angle3 = 0;
  int angle4 = 0;
  int angle5 = 0;

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
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                    label: angle0.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue0 = value;
                      });
                      upvalue0();
                    },
                  ),
                  Text(
                    angle0.round().toString(),
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    label: angle1.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue1 = value;
                      });
                      upvalue1();
                    },
                  ),
                  Text(
                    angle1.round().toString(),
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    label: angle2.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue2 = value;
                      });
                      upvalue2();
                    },
                  ),
                  Text(
                    angle2.round().toString(),
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    label: angle3.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue3 = value;
                      });
                      upvalue3();
                    },
                  ),
                  Text(
                    angle3.round().toString(),
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    label: angle4.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue4 = value;
                      });
                      upvalue4();
                    },
                  ),
                  Text(
                    angle4.round().toString(),
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    label: angle5.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue5 = value;
                      });
                      upvalue5();
                    },
                  ),
                  Text(
                    angle5.round().toString(),
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
        ),
      ),
    );
  }

  void upvalue0() {
    Manual_Ref.child("axis0").update({'value': currentSliderValue0.round()});
  }

  void upvalue1() {
    Manual_Ref.child("axis1").update({'value': currentSliderValue1.round()});
  }

  void upvalue2() {
    Manual_Ref.child("axis2").update({'value': currentSliderValue2.round()});
  }

  void upvalue3() {
    Manual_Ref.child("axis3").update({'value': currentSliderValue3.round()});
  }

  void upvalue4() {
    Manual_Ref.child("axis4").update({'value': currentSliderValue4.round()});
  }

  void upvalue5() {
    Manual_Ref.child("axis5").update({'value': currentSliderValue5.round()});
  }
}
