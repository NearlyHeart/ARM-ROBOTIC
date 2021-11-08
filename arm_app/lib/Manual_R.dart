// @dart=2.9

import 'package:another_flushbar/flushbar.dart';
import 'package:arm_app/Auto.dart';
import 'package:arm_app/Constants.dart';
import 'package:arm_app/ShowPosition.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:control_pad/views/joystick_view.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flash/flash.dart';
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

  DatabaseReference _status =
      FirebaseDatabase.instance.reference().child('check_arm');
  DatabaseReference _Save_angle =
      FirebaseDatabase.instance.reference().child('Save_angle/position');

  bool CheckARM;
  _ChecK_arm() {
    _status.onValue.listen((event) {
      final data = new Map<String, dynamic>.from(event.snapshot.value);
      final status = data['status'] as bool;
      setState(() {
        CheckARM = status;
        print('status get : ${CheckARM}');
      });
    });
  }

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

  void _showDialogFlash() {
    context.showFlashDialog(
      borderColor: Colors.green,
      backgroundColor: Colors.white,
      title: Text(
        'บันทึกสำเร็จ!!',
        style: TextStyle(
          color: Colors.green.shade900,
          fontSize: 20,
        ),
      ),
      content: Text(
        'บันทึกตำแหน่งแขนกลเรียบร้อยเล้ว',
        style: TextStyle(
          color: Colors.green.shade900,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  void initState() {
    // init something.

    _ChecK_arm();
    _Get1();
    super.initState();
    _Save_angle.once().then(
      (DataSnapshot snapshot) {
        Map<dynamic, dynamic> value = snapshot.value;
        value.forEach((key, value) {});
      },
    );
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

  String posname = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Arm Control"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "ควบคุมแขนกล",
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext conttext) {
                      return AlertDialog(
                        elevation: 20.00,
                        backgroundColor: bgAppbar,
                        title: Text(
                          "บันทึกตำแหน่งแขนกล",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        content: Form(
                          key: _formKey,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              labelText: "ชื่อตำแหน่ง",
                              labelStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              // border: InputBorder.none,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                            ),
                            maxLength: 20,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "กรุณาพิ่มชื่อ";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (String value) {
                              posname = value.trim();
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'ยกเลิก',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // _formKey.currentState.save();
                              print(posname);
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                _Save_angle.push().set({
                                  'name': posname,
                                  'axis0': currentSliderValue0.round(),
                                  'axis1': currentSliderValue1.round(),
                                  'axis2': currentSliderValue2.round(),
                                  'axis3': currentSliderValue3.round(),
                                  'axis4': currentSliderValue4.round(),
                                  'axis5': currentSliderValue5.round(),
                                });
                              }
                              _showDialogFlash();
                              Navigator.pop(context);
                              print(posname);
                            },
                            child: Text(
                              'เพิ่ม',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: Text(
                'บันทึกตำแหน่งเเขนกล',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                  primary: Color(0xFF061C31)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Show_pos()));
              },
              child: Text(
                'เลือกลำดับการทำงาน',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                  primary: Color(0xFF061C31)),
            ),
          ],
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
