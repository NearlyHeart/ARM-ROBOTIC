// @dart=2.9
import 'package:arm_app/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final Select_Cube = FirebaseFirestore.instance.collection("Select_Cube");

class Auto2 extends StatefulWidget {
  Auto2({Key key}) : super(key: key);

  @override
  _Auto2State createState() => _Auto2State();
}

class _Auto2State extends State<Auto2> {
  int selectedServo;
  final check = Check();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auto"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: bgColor,
        child: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            ElevatedButton(
              onPressed: () {
                resetCube_Blue();
                resetCube_Green();
                resetCube_Yellow();
                resetCube_Red();
              },
              child: Text(
                "CANCEL",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  primary: Colors.red),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "START",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  primary: Colors.green),
            ),
            Spacer(),
          ],
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 10),
                        width: 370,
                        height: 210,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 370,
                                  height: 100,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 40),
                                      Image.asset(
                                        'assets/images/Cube.png',
                                      ),
                                      Text(
                                        'Cube',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: bgAppbar,
                                          fontSize: 40,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade900,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 70,
                                      height: 50,
                                    ),
                                    StreamBuilder(
                                      stream: FirebaseFirestore.instance
                                          .collection('Select_Cube')
                                          .doc('Cube_Blue') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        var document = snapshot.data;
                                        bool total = document['Blue'];
                                        return Container(
                                          // width: 160,
                                          // height: 100,
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: total,
                                                onChanged: (value) {
                                                  setState(() {
                                                    total = !total;
                                                    setCube_Blue(total);
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                //////////////////////////////////////////////////
                                Spacer(),

                                Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade900,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 70,
                                      height: 50,
                                    ),
                                    StreamBuilder(
                                      stream: FirebaseFirestore.instance
                                          .collection('Select_Cube')
                                          .doc('Cube_Green') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        var document = snapshot.data;
                                        bool total = document['Green'];
                                        return Container(
                                          // width: 160,
                                          // height: 100,
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: total,
                                                onChanged: (value) {
                                                  setState(() {
                                                    total = !total;
                                                    setCube_Green(total);
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Spacer(),

                                Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.yellow.shade300,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 70,
                                      height: 50,
                                    ),
                                    StreamBuilder(
                                      stream: FirebaseFirestore.instance
                                          .collection('Select_Cube')
                                          .doc('Cube_Yellow') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        var document = snapshot.data;
                                        bool total = document['Yellow'];
                                        return Container(
                                          // width: 160,
                                          // height: 100,
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: total,
                                                onChanged: (value) {
                                                  setState(() {
                                                    total = !total;
                                                    setCube_Yellow(total);
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade900,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 70,
                                      height: 50,
                                    ),
                                    StreamBuilder(
                                      stream: FirebaseFirestore.instance
                                          .collection('Select_Cube')
                                          .doc('Cube_Red') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        var document = snapshot.data;
                                        bool total = document['Red'];
                                        return Container(
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: total,
                                                onChanged: (value) {
                                                  setState(() {
                                                    total = !total;
                                                    setCube_Red(total);
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Check {
  bool value = false;
}

///////////////////////////////////////////////////////////////////////////////
Future<void> setCube_Blue(bool total) {
  return Select_Cube.doc('Cube_Blue').set({'Blue': total});
}

Future<void> setCube_Green(bool total) {
  return Select_Cube.doc('Cube_Green').set({'Green': total});
}

Future<void> setCube_Yellow(bool total) {
  return Select_Cube.doc('Cube_Yellow').set({'Yellow': total});
}

Future<void> setCube_Red(bool total) {
  return Select_Cube.doc('Cube_Red').set({'Red': total});
}

////////////////////////////////////////////////////////////////////////////////
Future<void> resetCube_Red() {
  return Select_Cube.doc('Cube_Red').set({'Red': false});
}

Future<void> resetCube_Blue() {
  return Select_Cube.doc('Cube_Blue').set({'Blue': false});
}

Future<void> resetCube_Yellow() {
  return Select_Cube.doc('Cube_Yellow').set({'Yellow': false});
}

Future<void> resetCube_Green() {
  return Select_Cube.doc('Cube_Green').set({'Green': false});
}
///////////////////////////////////////////////////////////////////////////////

