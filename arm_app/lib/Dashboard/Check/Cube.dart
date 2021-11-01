// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// CollectionReference Cylinder_db = FirebaseFirestore.instance.collection("Cube");
// final Test_db = FirebaseFirestore.instance.collection("Cube");

class Cube extends StatefulWidget {
  final int xs;
  Cube({Key key, this.xs}) : super(key: key);

  @override
  _CubeState createState() => _CubeState();
}

class _CubeState extends State<Cube> {
  int xs, y, sum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cube"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),

              Row(
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
                      'assets/images/Cube.png',
                    ),
                  ),
                  SizedBox(width: 25),
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Cube')
                        .doc('Cube_Sum') //ID OF DOCUMENT
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
                children: [
                  SizedBox(width: 20),
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Cube')
                        .doc('Cube_Blue') //ID OF DOCUMENT
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
                        .collection('Cube')
                        .doc('Cube_Red') //ID OF DOCUMENT
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
                children: [
                  SizedBox(width: 20),
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Cube')
                        .doc('Cube_Green') //ID OF DOCUMENT
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
                        .collection('Cube')
                        .doc('Cube_Yellow') //ID OF DOCUMENT
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
      ),
    );
  }
}
