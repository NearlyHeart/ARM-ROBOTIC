// @dart=2.9

import 'package:arm_app/Auto.dart';
import 'package:arm_app/Auto2.dart';
import 'package:arm_app/Manual_R.dart';
import 'package:arm_app/Keep/Manual_R2..dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:arm_app/Auto.dart';
import 'package:arm_app/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:control_pad/views/joystick_view.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flash/flash.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Constants.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  // void _showTopFlash({FlashBehavior style = FlashBehavior.floating}) {
  //   showFlash(
  //     context: context,
  //     duration: const Duration(seconds: 2),
  //     persistent: false,
  //     builder: (_, controller) {
  //       return Flash(
  //         controller: controller,
  //         backgroundColor: Colors.white,
  //         brightness: Brightness.light,
  //         boxShadows: [BoxShadow(blurRadius: 4)],
  //         barrierBlur: 3.0,
  //         barrierColor: Colors.black38,
  //         barrierDismissible: true,
  //         behavior: style,
  //         position: FlashPosition.top,
  //         child: FlashBar(
  //           title: Text('Title'),
  //           content: Text('Hello world!'),
  //           showProgressIndicator: true,
  //           primaryAction: TextButton(
  //             onPressed: () => controller.dismiss(),
  //             child: Text('DISMISS', style: TextStyle(color: Colors.amber)),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  DatabaseReference _status =
      FirebaseDatabase.instance.reference().child('check_arm');

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

  void _showFlash_true({
    Duration duration,
    flashStyle = FlashBehavior.floating,
  }) {
    showFlash(
      context: context,
      duration: const Duration(milliseconds: 3000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: flashStyle,
          position: FlashPosition.top,
          brightness: Brightness.light,
          barrierBlur: 3.0, //พื้นหลังBlur
          barrierColor: Colors.black38, //พื้นหลัง
          boxShadows: [BoxShadow(blurRadius: 4)],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          // backgroundGradient: RadialGradient(
          //   colors: [Colors.green.shade100, Colors.green.shade900],
          //   center: Alignment.topLeft,
          //   radius: 10,
          // ),
          child: FlashBar(
            icon: Icon(
              Icons.play_arrow,
              size: 40,
              color: Colors.green.shade900,
            ),
            indicatorColor: Colors.green.shade900,
            content: Container(
              child: Row(
                children: [
                  Text(
                    'แขนกลกำลังทำงาน',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showFlash_false({
    Duration duration,
    flashStyle = FlashBehavior.floating,
  }) {
    showFlash(
      context: context,
      duration: const Duration(milliseconds: 3000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: flashStyle,
          position: FlashPosition.top,
          brightness: Brightness.light,
          barrierBlur: 3.0, //พื้นหลังBlur
          barrierColor: Colors.black38, //พื้นหลัง
          boxShadows: [BoxShadow(blurRadius: 4)],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            icon: Icon(
              Icons.adjust_rounded,
              size: 40,
              color: Colors.red.shade900,
            ),
            indicatorColor: Colors.red.shade900,
            content: Container(
              child: Row(
                children: [
                  Text(
                    'แขนกลหยุดทำงาน',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    // init something.=
    _ChecK_arm();
    super.initState();
  }

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
                  _ChecK_arm();
                  if (CheckARM != false) {
                    _showFlash_true();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Auto2()));
                  } else {
                    _showFlash_false();
                  }
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
                  _ChecK_arm();
                  if (CheckARM != false) {
                    _showFlash_true();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Manual()));
                  } else {
                    _showFlash_false();
                  }
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
