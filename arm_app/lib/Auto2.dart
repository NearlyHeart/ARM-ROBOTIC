// @dart=2.9
import 'package:arm_app/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final Select_Cube = FirebaseFirestore.instance.collection("Select_Cube");
final Select_Cylinder =
    FirebaseFirestore.instance.collection("Select_Cylinder");
final Select_Triangle =
    FirebaseFirestore.instance.collection("Select_Triangle");
final Select_Electronic =
    FirebaseFirestore.instance.collection("Select_Electronic");

class Auto2 extends StatefulWidget {
  Auto2({Key key}) : super(key: key);

  @override
  _Auto2State createState() => _Auto2State();
}

class _Auto2State extends State<Auto2> {
  int selectedServo;
  final CH = Check();
  bool blue, green, yellow, red;
  bool Cylinder_Blue, Cylinder_Green, Cylinder_Yellow, Cylinder_Red;
  bool Triangle_Blue, Triangle_Green, Triangle_Yellow, Triangle_Red;
  bool Electronic_Servo, Electronic_Capacitor, Electronic_Switch;

  @override
  Widget build(BuildContext context) {
    resetCube_Blue();
    resetCube_Green();
    resetCube_Yellow();
    resetCube_Red();
    ////////////////////////////////////////////////////////////////
    resetCylinder_Blue();
    resetCylinder_Green();
    resetCylinder_Yellow();
    resetCylinder_Red();
    ////////////////////////////////////////////////////////////////
    resetTriangle_Blue();
    resetTriangle_Green();
    resetTriangle_Yellow();
    resetTriangle_Red();
    ////////////////////////////////////////////////////////////////
    resetElectronic_Servo();
    resetElectronic_Capacitor();
    resetElectronic_Switch();
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
                ////////////////////////////////////////////////////////////////
                resetCylinder_Blue();
                resetCylinder_Green();
                resetCylinder_Yellow();
                resetCylinder_Red();
                ////////////////////////////////////////////////////////////////
                resetTriangle_Blue();
                resetTriangle_Green();
                resetTriangle_Yellow();
                resetTriangle_Red();
                ////////////////////////////////////////////////////////////////
                resetElectronic_Servo();
                resetElectronic_Capacitor();
                resetElectronic_Switch();
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(builder: (context) => Auto2()),
                //   (Route<dynamic> route) => false,
                // );
                // Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Auto2()));
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
              onPressed: () {
                setCube_Green(green);
                setCube_Blue(blue);
                setCube_Yellow(yellow);
                setCube_Red(red);
                ///////////////////////////////////////////////////////////////
                setCylinder_Green(Cylinder_Green);
                setCylinder_Blue(Cylinder_Blue);
                setCylinder_Yellow(Cylinder_Yellow);
                setCylinder_Red(Cylinder_Red);
                ///////////////////////////////////////////////////////////////
                setTriangle_Green(Triangle_Green);
                setTriangle_Blue(Triangle_Blue);
                setTriangle_Yellow(Triangle_Yellow);
                setTriangle_Red(Triangle_Red);
                ////////////////////////////////////////////////////////////////
                setElectronic_Servo(Electronic_Servo);
                setElectronic_Capacitor(Electronic_Capacitor);
                setElectronic_Switch(Electronic_Switch);
              },
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
          mainAxisAlignment: MainAxisAlignment.center,
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
                        height: 250,
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
                                  height: 80,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 90),
                                      Text(
                                        'Electronic',
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
                            Spacer(),
                            Row(
                              children: [
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(
                                        'assets/images/servo.png',
                                        height: 70,
                                        width: 50,
                                      ),
                                    ),
                                    StreamBuilder(
                                      stream: FirebaseFirestore.instance
                                          .collection('Select_Electronic')
                                          .doc(
                                              'Electronic_Servo') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        return Container(
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: CH.valueElectronic_Servo,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueElectronic_Servo =
                                                        !CH.valueElectronic_Servo;
                                                  });
                                                  return Electronic_Servo =
                                                      CH.valueElectronic_Servo;
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
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(
                                        'assets/images/Capacitor.png',
                                        height: 90,
                                        width: 90,
                                      ),
                                    ),
                                    StreamBuilder(
                                      stream: FirebaseFirestore.instance
                                          .collection('Select_Electronic')
                                          .doc(
                                              'Electronic_Capacitor') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        return Container(
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: CH
                                                    .valueElectronic_Capacitor,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueElectronic_Capacitor =
                                                        !CH.valueElectronic_Capacitor;
                                                  });
                                                  return Electronic_Capacitor =
                                                      CH.valueElectronic_Capacitor;
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
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(
                                        'assets/images/switch.png',
                                        height: 70,
                                        width: 50,
                                      ),
                                    ),
                                    StreamBuilder(
                                      stream: FirebaseFirestore.instance
                                          .collection('Select_Electronic')
                                          .doc(
                                              'Electronic_Switch') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        return Container(
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value:
                                                    CH.valueElectronic_Switch,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueElectronic_Switch =
                                                        !CH.valueElectronic_Switch;
                                                  });
                                                  return Electronic_Switch =
                                                      CH.valueElectronic_Switch;
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
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: CH.valueCube_blue,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueCube_blue =
                                                        !CH.valueCube_blue;
                                                  });
                                                  return blue =
                                                      CH.valueCube_blue;
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
                                                value: CH.valueCube_green,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueCube_green =
                                                        !CH.valueCube_green;
                                                  });
                                                  return green =
                                                      CH.valueCube_green;
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
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: CH.valueCube_yellow,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueCube_yellow =
                                                        !CH.valueCube_yellow;
                                                  });
                                                  return yellow =
                                                      CH.valueCube_yellow;
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
                                                value: CH.valueCube_red,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueCube_red =
                                                        !CH.valueCube_red;
                                                  });
                                                  return red = CH.valueCube_red;
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
                                        'assets/images/Cylinder.png',
                                      ),
                                      Text(
                                        'Cylinder',
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
                                          .collection('Select_Cylinder')
                                          .doc('Cylinder_Blue') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        var document = snapshot.data;
                                        bool total = document['Blue'];

                                        return Container(
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: CH.valueCylinder_blue,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueCylinder_blue =
                                                        !CH.valueCylinder_blue;
                                                  });
                                                  return Cylinder_Blue =
                                                      CH.valueCylinder_blue;
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
                                          .collection('Select_Cylinder')
                                          .doc(
                                              'Cylinder_Green') //ID OF DOCUMENT
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
                                                value: CH.valueCylinder_green,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueCylinder_green =
                                                        !CH.valueCylinder_green;
                                                  });
                                                  return Cylinder_Green =
                                                      CH.valueCylinder_green;
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
                                          .collection('Select_Cylinder')
                                          .doc(
                                              'Cylinder_Yellow') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        var document = snapshot.data;
                                        bool total = document['Yellow'];
                                        return Container(
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: CH.valueCylinder_yellow,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueCylinder_yellow =
                                                        !CH.valueCylinder_yellow;
                                                  });
                                                  return Cylinder_Yellow =
                                                      CH.valueCylinder_yellow;
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
                                          .collection('Select_Cylinder')
                                          .doc('Cylinder_Red') //ID OF DOCUMENT
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
                                                value: CH.valueCylinder_red,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueCylinder_red =
                                                        !CH.valueCylinder_red;
                                                  });
                                                  return Cylinder_Red =
                                                      CH.valueCylinder_red;
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
                                        'assets/images/Triangle.png',
                                      ),
                                      Text(
                                        'Triangle ',
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
                                          .collection('Select_Triangle')
                                          .doc('Triangle_Blue') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        var document = snapshot.data;
                                        bool total = document['Blue'];

                                        return Container(
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: CH.valueTriangle_blue,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueTriangle_blue =
                                                        !CH.valueTriangle_blue;
                                                  });
                                                  return Triangle_Blue =
                                                      CH.valueTriangle_blue;
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
                                          .collection('Select_Triangle')
                                          .doc(
                                              'Triangle_Green') //ID OF DOCUMENT
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
                                                value: CH.valueTriangle_green,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueTriangle_green =
                                                        !CH.valueTriangle_green;
                                                  });
                                                  return Triangle_Green =
                                                      CH.valueTriangle_green;
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
                                          .collection('Select_Triangle')
                                          .doc(
                                              'Triangle_Yellow') //ID OF DOCUMENT
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData) {
                                          return new CircularProgressIndicator();
                                        }
                                        var document = snapshot.data;
                                        bool total = document['Yellow'];
                                        return Container(
                                          child: Column(
                                            children: [
                                              Checkbox(
                                                activeColor: bgAppbar,
                                                value: CH.valueTriangle_yellow,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueTriangle_yellow =
                                                        !CH.valueTriangle_yellow;
                                                  });
                                                  return Triangle_Yellow =
                                                      CH.valueTriangle_yellow;
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
                                          .collection('Select_Triangle')
                                          .doc('Triangle_Red') //ID OF DOCUMENT
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
                                                value: CH.valueTriangle_red,
                                                onChanged: (value) {
                                                  setState(() {
                                                    CH.valueTriangle_red =
                                                        !CH.valueTriangle_red;
                                                  });
                                                  return Triangle_Red =
                                                      CH.valueTriangle_red;
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
  bool valueCube_blue = false;
  bool valueCube_green = false;
  bool valueCube_yellow = false;
  bool valueCube_red = false;
  //////////////////////////////////////////////////////////////////////////////
  bool valueCylinder_blue = false;
  bool valueCylinder_green = false;
  bool valueCylinder_yellow = false;
  bool valueCylinder_red = false;
  //////////////////////////////////////////////////////////////////////////////
  bool valueTriangle_blue = false;
  bool valueTriangle_green = false;
  bool valueTriangle_yellow = false;
  bool valueTriangle_red = false;
  //////////////////////////////////////////////////////////////////////////////
  bool valueElectronic_Servo = false;
  bool valueElectronic_Capacitor = false;
  bool valueElectronic_Switch = false;
}

/////////////////////////////////  Cube    ////////////////////////////////////
Future<void> setCube_Blue(bool blue) {
  return Select_Cube.doc('Cube_Blue').set({'Blue': blue});
}

Future<void> setCube_Green(bool green) {
  return Select_Cube.doc('Cube_Green').set({'Green': green});
}

Future<void> setCube_Yellow(bool yellow) {
  return Select_Cube.doc('Cube_Yellow').set({'Yellow': yellow});
}

Future<void> setCube_Red(bool red) {
  return Select_Cube.doc('Cube_Red').set({'Red': red});
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

/////////////////////////////////  Cylinder  ///////////////////////////////////
Future<void> setCylinder_Blue(bool Cylinder_Blue) {
  return Select_Cylinder.doc('Cylinder_Blue').set({'Blue': Cylinder_Blue});
}

Future<void> setCylinder_Green(bool Cylinder_Green) {
  return Select_Cylinder.doc('Cylinder_Green').set({'Green': Cylinder_Green});
}

Future<void> setCylinder_Yellow(bool Cylinder_Yellow) {
  return Select_Cylinder.doc('Cylinder_Yellow')
      .set({'Yellow': Cylinder_Yellow});
}

Future<void> setCylinder_Red(bool Cylinder_Red) {
  return Select_Cylinder.doc('Cylinder_Red').set({'Red': Cylinder_Red});
}

////////////////////////////////////////////////////////////////////////////////
Future<void> resetCylinder_Red() {
  return Select_Cylinder.doc('Cylinder_Red').set({'Red': false});
}

Future<void> resetCylinder_Blue() {
  return Select_Cylinder.doc('Cylinder_Blue').set({'Blue': false});
}

Future<void> resetCylinder_Yellow() {
  return Select_Cylinder.doc('Cylinder_Yellow').set({'Yellow': false});
}

Future<void> resetCylinder_Green() {
  return Select_Cylinder.doc('Cylinder_Green').set({'Green': false});
}

/////////////////////////////////  Triangle  ///////////////////////////////////
Future<void> setTriangle_Blue(bool Triangle_Blue) {
  return Select_Triangle.doc('Triangle_Blue').set({'Blue': Triangle_Blue});
}

Future<void> setTriangle_Green(bool Triangle_Green) {
  return Select_Triangle.doc('Triangle_Green').set({'Green': Triangle_Green});
}

Future<void> setTriangle_Yellow(bool Triangle_Yellow) {
  return Select_Triangle.doc('Triangle_Yellow')
      .set({'Yellow': Triangle_Yellow});
}

Future<void> setTriangle_Red(bool Triangle_Red) {
  return Select_Triangle.doc('Triangle_Red').set({'Red': Triangle_Red});
}

////////////////////////////////////////////////////////////////////////////////
Future<void> resetTriangle_Red() {
  return Select_Triangle.doc('Triangle_Red').set({'Red': false});
}

Future<void> resetTriangle_Blue() {
  return Select_Triangle.doc('Triangle_Blue').set({'Blue': false});
}

Future<void> resetTriangle_Yellow() {
  return Select_Triangle.doc('Triangle_Yellow').set({'Yellow': false});
}

Future<void> resetTriangle_Green() {
  return Select_Triangle.doc('Triangle_Green').set({'Green': false});
}

/////////////////////////////////  Electronic  ///////////////////////////////////
Future<void> setElectronic_Servo(bool Electronic_Servo) {
  return Select_Electronic.doc('Electronic_Servo')
      .set({'Servo': Electronic_Servo});
}

Future<void> setElectronic_Capacitor(bool Electronic_Capacitor) {
  return Select_Electronic.doc('Electronic_Capacitor')
      .set({'Capacitor': Electronic_Capacitor});
}

Future<void> setElectronic_Switch(bool Electronic_Capacitor) {
  return Select_Electronic.doc('Electronic_Switch')
      .set({'Switch': Electronic_Capacitor});
}

////////////////////////////////////////////////////////////////////////////////
Future<void> resetElectronic_Servo() {
  return Select_Electronic.doc('Electronic_Servo').set({'Servo': false});
}

Future<void> resetElectronic_Capacitor() {
  return Select_Electronic.doc('Electronic_Capacitor')
      .set({'Capacitor': false});
}

Future<void> resetElectronic_Switch() {
  return Select_Electronic.doc('Electronic_Switch').set({'Switch': false});
}
