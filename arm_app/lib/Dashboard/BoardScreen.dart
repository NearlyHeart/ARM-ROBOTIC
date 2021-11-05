import 'package:arm_app/Constants.dart';
import 'package:arm_app/Dashboard/Check/Cylinder.dart';
import 'package:arm_app/Dashboard/Check/Electronic.dart';
import 'package:arm_app/Keep/Srevo.dart';
import 'package:arm_app/Ts/ts.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  Board({Key? key}) : super(key: key);

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OBJECTS"),
        backgroundColor: bgAppbar,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Title(
                color: bgAppbar,
                child: Text(
                  "Object Storage",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                )),
            Text(
              "__________________________________________",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            // Row(
            //   children: [
            //     SizedBox(width: 100),
            //     Title(
            //         color: bgAppbar,
            //         child: Text(
            //           "Geometriske former",
            //           style: const TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white,
            //             fontSize: 18,
            //           ),
            //         )),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                  width: 300,
                  height: 230,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Title(
                          color: bgAppbar,
                          child: Text(
                            "Electronic",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: bgAppbar,
                              fontSize: 25,
                            ),
                          )),
                      Image.asset(
                        'assets/images/EL.png',
                        height: 100,
                        width: 100,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Electronic()));
                        },
                        child: Text(
                          'เช็คจำนวน',
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
                    ],
                  ),
                ),
              ],
            ),
            Text("_________________________________________",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            // Row(
            //   children: [
            //     SizedBox(width: 150),
            //     Title(
            //         color: bgAppbar,
            //         child: Text(
            //           "Electronic",
            //           style: const TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white,
            //             fontSize: 18,
            //           ),
            //         )),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                  width: 300,
                  height: 230,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Title(
                          color: bgAppbar,
                          child: Text(
                            "Geometry Former",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: bgAppbar,
                              fontSize: 25,
                            ),
                          )),
                      Image.asset(
                        'assets/images/GO.png',
                        height: 100,
                        width: 100,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar()));
                        },
                        child: Text(
                          'เช็คจำนวน',
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
                    ],
                  ),
                ),
              ],
            ),
            Text("_________________________________________",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
