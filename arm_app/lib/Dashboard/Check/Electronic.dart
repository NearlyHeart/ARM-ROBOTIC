// @dart=2.9

import 'package:arm_app/Constants.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

final Future<FirebaseApp> firebase = Firebase.initializeApp();
CollectionReference Servo_db = FirebaseFirestore.instance.collection("Servo");
CollectionReference Switch_db = FirebaseFirestore.instance.collection("Switch");
CollectionReference Capacitor_db =
    FirebaseFirestore.instance.collection("Capacitor");

final Test_db = FirebaseFirestore.instance.collection("Count_servo");

final Stream<QuerySnapshot> _usersStream =
    FirebaseFirestore.instance.collection('Cube').snapshots();

class Electronic extends StatelessWidget {
  const Electronic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Electronic"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                  width: 180,
                  height: 180,
                  child: Image.asset(
                    'assets/images/servo.png',
                  ),
                ),
                SizedBox(width: 10),
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('Servo')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Text("No Task Added"),
                      );
                    }
                    final documentSnapshotList = snapshot.data.docs;
                    print(documentSnapshotList.length);
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 10),
                      width: 180,
                      height: 180,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     addServo();
                          //   },
                          //   child: Text(
                          //     'เพิ่ม',
                          //     style: const TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white,
                          //       fontSize: 18,
                          //     ),
                          //   ),
                          //   style: ElevatedButton.styleFrom(
                          //     padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          //     primary: Color(0xFF061C31),
                          //   ),
                          // ),
                          Text(
                            "TOTAL",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            documentSnapshotList.length.toString(),
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                  width: 180,
                  height: 180,
                  child: Image.asset(
                    'assets/images/switch.png',
                  ),
                ),
                SizedBox(width: 10),
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('Switch')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Text("No Task Added"),
                      );
                    }
                    final documentSnapshotList = snapshot.data.docs;
                    print(documentSnapshotList.length);
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 10),
                      width: 180,
                      height: 180,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     addSwitch();
                          //   },
                          //   child: Text(
                          //     'เพิ่ม',
                          //     style: const TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white,
                          //       fontSize: 18,
                          //     ),
                          //   ),
                          //   style: ElevatedButton.styleFrom(
                          //     padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          //     primary: Color(0xFF061C31),
                          //   ),
                          // ),
                          Text(
                            "TOTAL",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            documentSnapshotList.length.toString(),
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                  width: 180,
                  height: 180,
                  child: Image.asset(
                    'assets/images/Capacitor.png',
                  ),
                ),
                SizedBox(width: 10),
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('Capacitor')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Text("No Task Added"),
                      );
                    }
                    final documentSnapshotList = snapshot.data.docs;
                    print(documentSnapshotList.length);
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 10),
                      width: 180,
                      height: 180,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     addCapacitor();
                          //   },
                          //   child: Text(
                          //     'เพิ่ม',
                          //     style: const TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white,
                          //       fontSize: 18,
                          //     ),
                          //   ),
                          //   style: ElevatedButton.styleFrom(
                          //     padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          //     primary: Color(0xFF061C31),
                          //   ),
                          // ),
                          Text(
                            "TOTAL",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            documentSnapshotList.length.toString(),
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> set(int total) {
  return Test_db.doc('pnkkmSjpBx0cD3VmIupM')
      .set({
        'count': total,
      })
      .then((value) => print("success"))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> addServo() {
  return Servo_db.add(
    {
      'name': 'iiiii',
      'time': 'test',
      'type': 'Electronic',
    },
  )
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> addSwitch() {
  return Switch_db.add(
    {
      'name': 'iiiii',
      'time': 'test',
      'type': 'Electronic',
    },
  )
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> addCapacitor() {
  return Capacitor_db.add(
    {
      'name': 'iiiii',
      'time': 'test',
      'type': 'Electronic',
    },
  )
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
