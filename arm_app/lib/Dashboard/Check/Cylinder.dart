// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

CollectionReference Cylinder_db =
    FirebaseFirestore.instance.collection("Cylinder");

class Cylinder extends StatefulWidget {
  final int xs;
  Cylinder({Key key, this.xs}) : super(key: key);

  @override
  _CylinderState createState() => _CylinderState();
}

class _CylinderState extends State<Cylinder> {
  int xs, y, sum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cylinder"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                      .collection('Cylinder')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: Text("No Task Added"),
                      );
                    }
                    final documentSnapshotList = snapshot.data.docs;
                    xs = documentSnapshotList.length;

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
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              addServo();
                            },
                            child: Text(
                              'เพิ่ม',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              primary: Color(0xFF061C31),
                            ),
                          ),
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
                              fontSize: 30,
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
                    y = documentSnapshotList.length;

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
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              addServo();
                            },
                            child: Text(
                              'เพิ่ม',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              primary: Color(0xFF061C31),
                            ),
                          ),
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
                              fontSize: 30,
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

Future<void> addServo() {
  return Cylinder_db.add(
    {
      'name': 'iiiii',
      'time': 'test',
      'type': 'Electronic',
    },
  )
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
