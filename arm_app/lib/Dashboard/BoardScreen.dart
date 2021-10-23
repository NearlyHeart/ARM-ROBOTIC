import 'package:arm_app/Constants.dart';
import 'package:arm_app/Dashboard/Geometriske/Cylinder.dart';
import 'package:arm_app/Dashboard/Geometriske/Pyramid.dart';
import 'package:arm_app/Dashboard/Geometriske/Srevo.dart';
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
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Title(
                    color: bgAppbar,
                    child: Text(
                      "Geometriske former",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Srevo()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                    width: 100.0,
                    height: 100,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/servo.png',
                          height: 95,
                          width: 95,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cylinder()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                    width: 100.0,
                    height: 100,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/A1.jpg',
                          height: 95,
                          width: 95,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Pyramid()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                    width: 100.0,
                    height: 100,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/A1.jpg',
                          height: 95,
                          width: 95,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text("_________________________________________",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Title(
                    color: bgAppbar,
                    child: Text(
                      "Electronic",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Cube()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                    width: 100.0,
                    height: 100,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/A1.jpg',
                          height: 95,
                          width: 95,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Cube()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                    width: 100.0,
                    height: 100,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/A1.jpg',
                          height: 95,
                          width: 95,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Cube()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
                    width: 100.0,
                    height: 100,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/A1.jpg',
                          height: 95,
                          width: 95,
                        ),
                      ],
                    ),
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
