// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// CollectionReference Cylinder_db = FirebaseFirestore.instance.collection("Triangle");
// final Test_db = FirebaseFirestore.instance.collection("Triangle");

class Equilateral_triangle extends StatefulWidget {
  Equilateral_triangle({
    Key key,
  }) : super(key: key);

  @override
  _Equilateral_triangleState createState() => _Equilateral_triangleState();
}

class _Equilateral_triangleState extends State<Equilateral_triangle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Equilateral Triangle"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                  width: 160,
                  height: 160,
                  child: Image.asset(
                    'assets/images/Triangle.png',
                  ),
                ),
                SizedBox(width: 25),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Triangle')
                      .doc('Triangle_Sum') //ID OF DOCUMENT
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return new CircularProgressIndicator();
                    }
                    var document = snapshot.data;
                    int total = document['Sum'];

                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 10),
                      width: 160,
                      height: 160,
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     set(total);
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
                            document['Sum'].toString(),
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
            ////////////////////////////////////////////////////////////////////
            Text(
              "__________________________________________",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            ///////////////////////////////////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Triangle')
                      .doc('Triangle_Blue') //ID OF DOCUMENT
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return new CircularProgressIndicator();
                    }
                    var document = snapshot.data;
                    int total = document['Count'];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 10),
                      width: 160,
                      height: 160,
                      child: Container(
                        child: Column(
                          children: [
                            // ElevatedButton(
                            //   onPressed: () {
                            //     setBlue(total);
                            //   },
                            //   child: Text(
                            //     'เพิ่ม',
                            //     style: const TextStyle(
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white,
                            //       fontSize: 16,
                            //     ),
                            //   ),
                            //   style: ElevatedButton.styleFrom(
                            //     // padding: EdgeInsets.fromLTRB(1, 10, 20, 10),
                            //     primary: Color(0xFF061C31),
                            //   ),
                            // ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.only(
                                  left: 5, top: 5, right: 5, bottom: 5),
                              width: 160,
                              height: 100,
                            ),

                            Text(
                              document['Count'].toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.blue.shade900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(width: 20),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Triangle')
                      .doc('Triangle_Red') //ID OF DOCUMENT
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return new CircularProgressIndicator();
                    }
                    var document = snapshot.data;
                    int total = document['Count'];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 10),
                      width: 160,
                      height: 160,
                      child: Container(
                        child: Column(
                          children: [
                            // ElevatedButton(
                            //   onPressed: () {
                            //     setBlue(total);
                            //   },
                            //   child: Text(
                            //     'เพิ่ม',
                            //     style: const TextStyle(
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white,
                            //       fontSize: 16,
                            //     ),
                            //   ),
                            //   style: ElevatedButton.styleFrom(
                            //     // padding: EdgeInsets.fromLTRB(1, 10, 20, 10),
                            //     primary: Color(0xFF061C31),
                            //   ),
                            // ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF720611),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.only(
                                  left: 5, top: 5, right: 5, bottom: 5),
                              width: 160,
                              height: 100,
                            ),
                            Text(
                              document['Count'].toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.red.shade900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            ///////////////////////////////////////////////////////////////////

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Triangle')
                      .doc('Triangle_Green') //ID OF DOCUMENT
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return new CircularProgressIndicator();
                    }
                    var document = snapshot.data;
                    int total = document['Count'];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 10),
                      width: 160,
                      height: 160,
                      child: Container(
                        child: Column(
                          children: [
                            // ElevatedButton(
                            //   onPressed: () {
                            //     setBlue(total);
                            //   },
                            //   child: Text(
                            //     'เพิ่ม',
                            //     style: const TextStyle(
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white,
                            //       fontSize: 16,
                            //     ),
                            //   ),
                            //   style: ElevatedButton.styleFrom(
                            //     // padding: EdgeInsets.fromLTRB(1, 10, 20, 10),
                            //     primary: Color(0xFF061C31),
                            //   ),
                            // ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green.shade900,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.only(
                                  left: 5, top: 5, right: 5, bottom: 5),
                              width: 160,
                              height: 100,
                            ),

                            Text(
                              document['Count'].toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.green.shade900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(width: 20),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Triangle')
                      .doc('Triangle_Yellow') //ID OF DOCUMENT
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return new CircularProgressIndicator();
                    }
                    var document = snapshot.data;
                    int total = document['Count'];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 10),
                      width: 160,
                      height: 160,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow.shade400,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.only(
                                  left: 5, top: 5, right: 5, bottom: 5),
                              width: 160,
                              height: 100,
                            ),
                            Text(
                              document['Count'].toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow.shade900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            ///////////////////////////////////////////////////////////////////
            Text(
              "__________________________________________",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
