// @dart=2.9
import 'package:arm_app/Constants.dart';
import 'package:arm_app/Dashboard/BoardScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
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
  @override
  void initState() {
    // init something.

    getElectronic();
    getCube();
    getCylinder();
    getTriangle();
    super.initState();
  }

  Future getElectronic() async {
    var ElectronicServo = await Select_Electronic.doc('Electronic_Servo').get();
    Map<String, dynamic> Servo_bool = ElectronicServo.data();
    var Servo_value = Servo_bool['Servo'];

    var ElectronicCapacitor =
        await Select_Electronic.doc('Electronic_Capacitor').get();
    Map<String, dynamic> Capacitor_bool = ElectronicCapacitor.data();
    var Capacitor_value = Capacitor_bool['Capacitor'];

    var ElectronicSwitch =
        await Select_Electronic.doc('Electronic_Switch').get();
    Map<String, dynamic> Switch_bool = ElectronicSwitch.data();
    var Switch_value = Switch_bool['Switch'];

    setState(() {
      valueElectronic_Servo = Servo_value;
      valueElectronic_Capacitor = Capacitor_value;
      valueElectronic_Switch = Switch_value;
    });
  }

  Future getCube() async {
    var Select_Cube_Blue = await Select_Cube.doc('Cube_Blue').get();
    Map<String, dynamic> Cube_Blue_bool = Select_Cube_Blue.data();
    var Cube_Blue = Cube_Blue_bool['Blue'];

    var Select_Cube_Green = await Select_Cube.doc('Cube_Green').get();
    Map<String, dynamic> Cube_Green_bool = Select_Cube_Green.data();
    var Cube_Green = Cube_Green_bool['Green'];

    var Select_Cube_Yellow = await Select_Cube.doc('Cube_Yellow').get();
    Map<String, dynamic> Cube_Yellow_bool = Select_Cube_Yellow.data();
    var Cube_Yellow = Cube_Yellow_bool['Yellow'];

    var Select_Cube_Red = await Select_Cube.doc('Cube_Red').get();
    Map<String, dynamic> Cube_Red_bool = Select_Cube_Red.data();
    var Cube_Red = Cube_Red_bool['Red'];

    setState(() {
      valueCube_blue = Cube_Blue;
      valueCube_green = Cube_Green;
      valueCube_yellow = Cube_Yellow;
      valueCube_red = Cube_Red;
    });
  }

  Future getCylinder() async {
    var Select_Cylinder_Blue = await Select_Cylinder.doc('Cylinder_Blue').get();
    Map<String, dynamic> Cylinder_Blue_bool = Select_Cylinder_Blue.data();
    var Cylinder_Blue = Cylinder_Blue_bool['Blue'];

    var Select_Cylinder_Green =
        await Select_Cylinder.doc('Cylinder_Green').get();
    Map<String, dynamic> Cylinder_Green_bool = Select_Cylinder_Green.data();
    var Cylinder_Green = Cylinder_Green_bool['Green'];

    var Select_Cylinder_Yellow =
        await Select_Cylinder.doc('Cylinder_Yellow').get();
    Map<String, dynamic> Cylinder_Yellow_bool = Select_Cylinder_Yellow.data();
    var Cylinder_Yellow = Cylinder_Yellow_bool['Yellow'];

    var Select_Cylinder_Red = await Select_Cylinder.doc('Cylinder_Red').get();
    Map<String, dynamic> Cylinder_Red_bool = Select_Cylinder_Red.data();
    var Cylinder_Red = Cylinder_Red_bool['Red'];

    setState(() {
      valueCylinder_blue = Cylinder_Blue;
      valueCylinder_green = Cylinder_Green;
      valueCylinder_yellow = Cylinder_Yellow;
      valueCylinder_red = Cylinder_Red;
    });
  }

  Future getTriangle() async {
    var Select_Triangle_Blue = await Select_Triangle.doc('Triangle_Blue').get();
    Map<String, dynamic> Triangle_Blue_bool = Select_Triangle_Blue.data();
    var Triangle_Blue = Triangle_Blue_bool['Blue'];

    var Select_Triangle_Green =
        await Select_Triangle.doc('Triangle_Green').get();
    Map<String, dynamic> Triangle_Green_bool = Select_Triangle_Green.data();
    var Triangle_Green = Triangle_Green_bool['Green'];

    var Select_Triangle_Yellow =
        await Select_Triangle.doc('Triangle_Yellow').get();
    Map<String, dynamic> Triangle_Yellow_bool = Select_Triangle_Yellow.data();
    var Triangle_Yellow = Triangle_Yellow_bool['Yellow'];

    var Select_Triangle_Red = await Select_Triangle.doc('Triangle_Red').get();
    Map<String, dynamic> Triangle_Red_bool = Select_Triangle_Red.data();
    var Triangle_Red = Triangle_Red_bool['Red'];

    setState(() {
      valueTriangle_blue = Triangle_Blue;
      valueTriangle_green = Triangle_Green;
      valueTriangle_yellow = Triangle_Yellow;
      valueTriangle_red = Triangle_Red;
    });
  }

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
                reset();
                // Navigator.pop(context);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Auto2()));
              },
              child: Text(
                "ล้างข้อมูล",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  primary: Colors.red),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext conttext) {
                      return SingleChildScrollView(
                        child: AlertDialog(
                          backgroundColor: bgAppbar,
                          title: Container(
                            child: Column(
                              children: <Widget>[
                                if (valueCube_red != true &&
                                    valueCube_blue != true &&
                                    valueCube_yellow != true &&
                                    valueCube_green != true &&
                                    valueCylinder_green != true &&
                                    valueCylinder_blue != true &&
                                    valueCylinder_yellow != true &&
                                    valueCylinder_red != true &&
                                    valueTriangle_green != true &&
                                    valueTriangle_blue != true &&
                                    valueTriangle_yellow != true &&
                                    valueTriangle_red != true &&
                                    valueElectronic_Servo != true &&
                                    valueElectronic_Capacitor != true &&
                                    valueElectronic_Switch != true)
                                  Text('**กรุณาเลือกรายการวัตถุ**')
                                else
                                  Text('==== รายที่เลือก ===='),
                                // if (Electronic_Capacitor != false ||
                                //     Electronic_Switch != false ||
                                //     Electronic_Servo != false)
                                //   Text('-------------------'),
                                if (valueElectronic_Capacitor != false)
                                  Text('Capacitor'),
                                if (valueElectronic_Switch != false)
                                  Text('Switch'),
                                if (valueElectronic_Servo != false)
                                  Text('Servo'),
                                if (valueElectronic_Capacitor != false ||
                                    valueElectronic_Switch != false ||
                                    valueElectronic_Servo != false)
                                  Text('-------------------'),
                                //////////////////////////////////////////////////

                                if (valueCube_blue != false) Text('Blue Cube '),
                                if (valueCube_red != false) Text('Red Cube '),
                                if (valueCube_green != false)
                                  Text('Green Cube '),
                                if (valueCube_yellow != false)
                                  Text('Yellow Cube '),
                                if (valueCube_blue != false ||
                                    valueCube_red != false ||
                                    valueCube_green != false ||
                                    valueCube_yellow != false)
                                  Text('-------------------'),
                                //////////////////////////////////////////////////
                                if (valueCylinder_green != false)
                                  Text('Green Cylinder '),
                                if (valueCylinder_blue != false)
                                  Text('Blue Cylinder '),
                                if (valueCylinder_yellow != false)
                                  Text('Yellow Cylinder '),
                                if (valueCylinder_red != false)
                                  Text('Red Cylinder '),
                                if (valueCylinder_green != false ||
                                    valueCylinder_blue != false ||
                                    valueCylinder_yellow != false ||
                                    valueCylinder_red != false)
                                  Text('-------------------'),
                                //////////////////////////////////////////////////

                                if (valueTriangle_green != false)
                                  Text('Green Triangle '),
                                if (valueTriangle_blue != false)
                                  Text('Blue Triangle '),
                                if (valueTriangle_yellow != false)
                                  Text('Yellow Triangle '),
                                if (valueTriangle_red != false)
                                  Text('Red Triangle '),
                                if (valueTriangle_green != false ||
                                    valueTriangle_blue != false ||
                                    valueTriangle_yellow != false ||
                                    valueTriangle_red != false)
                                  Text('-------------------'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                // Navigator.of(context).pushReplacement(
                                //     MaterialPageRoute(
                                //         builder: (context) => Auto2()));
                              },
                              child: Text('ยกเลิก'),
                            ),
                            TextButton(
                              onPressed: () {
                                if (valueCube_red != false ||
                                    valueCube_blue != false ||
                                    valueCube_yellow != false ||
                                    valueCube_green != false ||
                                    valueCylinder_green != false ||
                                    valueCylinder_blue != false ||
                                    valueCylinder_yellow != false ||
                                    valueCylinder_red != false ||
                                    valueTriangle_green != false ||
                                    valueTriangle_blue != false ||
                                    valueTriangle_yellow != false ||
                                    valueTriangle_red != false ||
                                    valueElectronic_Servo != false ||
                                    valueElectronic_Capacitor != false ||
                                    valueElectronic_Switch != false)
                                  setCube_Green(valueCube_green);
                                setCube_Blue(valueCube_blue);
                                setCube_Yellow(valueCube_yellow);
                                setCube_Red(valueCube_red);
                                ///////////////////////////////////////////////////////////////
                                setCylinder_Green(valueCylinder_green);
                                setCylinder_Blue(valueCylinder_blue);
                                setCylinder_Yellow(valueCylinder_yellow);
                                setCylinder_Red(valueCylinder_red);
                                ///////////////////////////////////////////////////////////////
                                setTriangle_Green(valueTriangle_green);
                                setTriangle_Blue(valueTriangle_blue);
                                setTriangle_Yellow(valueTriangle_yellow);
                                setTriangle_Red(valueTriangle_red);
                                ////////////////////////////////////////////////////////////////
                                setElectronic_Servo(valueElectronic_Servo);
                                setElectronic_Capacitor(
                                    valueElectronic_Capacitor);
                                setElectronic_Switch(valueElectronic_Switch);
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => Board()));

                                if (valueCube_red != true &&
                                    valueCube_blue != true &&
                                    valueCube_yellow != true &&
                                    valueCube_green != true &&
                                    valueCylinder_green != true &&
                                    valueCylinder_blue != true &&
                                    valueCylinder_yellow != true &&
                                    valueCylinder_red != true &&
                                    valueTriangle_green != true &&
                                    valueTriangle_blue != true &&
                                    valueTriangle_yellow != true &&
                                    valueTriangle_red != true &&
                                    valueElectronic_Servo != true &&
                                    valueElectronic_Capacitor != true &&
                                    valueElectronic_Switch != true)
                                  Navigator.pop(context);
                              },
                              child: Text('ยืนยัน'),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text(
                "เริ่มทำงาน",
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 100,
                                        height: 100,
                                        child: Image.asset(
                                          'assets/images/servo.png',
                                          height: 70,
                                          width: 50,
                                        ),
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueElectronic_Servo,
                                        onChanged: (value) {
                                          setState(() {
                                            valueElectronic_Servo = value;
                                          });
                                          return valueElectronic_Servo;
                                        },
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 100,
                                        height: 100,
                                        child: Image.asset(
                                          'assets/images/Capacitor.png',
                                          height: 90,
                                          width: 90,
                                        ),
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueElectronic_Capacitor,
                                        onChanged: (value) {
                                          setState(() {
                                            valueElectronic_Capacitor = value;
                                            // Electronic_Capacitor =
                                            //     valueElectronic_Capacitor ;
                                          });
                                          return valueElectronic_Capacitor;
                                        },
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 100,
                                        height: 100,
                                        child: Image.asset(
                                          'assets/images/switch.png',
                                          height: 70,
                                          width: 50,
                                        ),
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueElectronic_Switch,
                                        onChanged: (value) {
                                          setState(() {
                                            valueElectronic_Switch = value;
                                          });
                                          return valueElectronic_Switch;
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueCube_blue,
                                        onChanged: (value) {
                                          setState(() {
                                            valueCube_blue = value;
                                          });
                                          return valueCube_blue;
                                        },
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green.shade900,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueCube_green,
                                        onChanged: (value) {
                                          setState(() {
                                            valueCube_green = value;
                                          });
                                          return valueCube_green;
                                        },
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade300,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueCube_yellow,
                                        onChanged: (value) {
                                          setState(() {
                                            valueCube_yellow = value;
                                          });
                                          return valueCube_yellow;
                                        },
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red.shade900,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueCube_red,
                                        onChanged: (value) {
                                          setState(() {
                                            valueCube_red = value;
                                          });
                                          return valueCube_red;
                                        },
                                      )
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueCylinder_blue,
                                        onChanged: (value) {
                                          setState(() {
                                            valueCylinder_blue = value;
                                          });
                                          return valueCylinder_blue;
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
                                          color: Colors.green.shade900,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueCylinder_green,
                                        onChanged: (value) {
                                          setState(() {
                                            valueCylinder_green = value;
                                          });
                                          return valueCylinder_green;
                                        },
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade300,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueCylinder_yellow,
                                        onChanged: (value) {
                                          setState(() {
                                            valueCylinder_yellow = value;
                                          });
                                          return valueCylinder_yellow;
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueCylinder_red,
                                        onChanged: (value) {
                                          setState(() {
                                            valueCylinder_red = value;
                                          });
                                          return valueCylinder_red;
                                        },
                                      )
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueTriangle_blue,
                                        onChanged: (value) {
                                          setState(() {
                                            valueTriangle_blue = value;
                                          });
                                          return valueTriangle_blue;
                                        },
                                      )
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueTriangle_green,
                                        onChanged: (value) {
                                          setState(() {
                                            valueTriangle_green = value;
                                          });
                                          return valueTriangle_green;
                                        },
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade300,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueTriangle_yellow,
                                        onChanged: (value) {
                                          setState(() {
                                            valueTriangle_yellow = value;
                                          });
                                          return valueTriangle_yellow;
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 70,
                                        height: 50,
                                      ),
                                      Checkbox(
                                        activeColor: bgAppbar,
                                        value: valueTriangle_red,
                                        onChanged: (value) {
                                          setState(() {
                                            valueTriangle_red = value;
                                          });
                                          return valueTriangle_red;
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
Future<void> setCube_Blue(bool valueCube_blue) {
  return Select_Cube.doc('Cube_Blue').set({'Blue': valueCube_blue});
}

Future<void> setCube_Green(bool valueCube_green) {
  return Select_Cube.doc('Cube_Green').set({'Green': valueCube_green});
}

Future<void> setCube_Yellow(bool valueCube_yellow) {
  return Select_Cube.doc('Cube_Yellow').set({'Yellow': valueCube_yellow});
}

Future<void> setCube_Red(bool valueCube_red) {
  return Select_Cube.doc('Cube_Red').set({'Red': valueCube_red});
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
Future<void> setCylinder_Blue(bool valueCylinder_blue) {
  return Select_Cylinder.doc('Cylinder_Blue').set({'Blue': valueCylinder_blue});
}

Future<void> setCylinder_Green(bool valueCylinder_green) {
  return Select_Cylinder.doc('Cylinder_Green')
      .set({'Green': valueCylinder_green});
}

Future<void> setCylinder_Yellow(bool valueCylinder_yellow) {
  return Select_Cylinder.doc('Cylinder_Yellow')
      .set({'Yellow': valueCylinder_yellow});
}

Future<void> setCylinder_Red(bool valueCylinder_red) {
  return Select_Cylinder.doc('Cylinder_Red').set({'Red': valueCylinder_red});
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
Future<void> setTriangle_Blue(bool valueTriangle_blue) {
  return Select_Triangle.doc('Triangle_Blue').set({'Blue': valueTriangle_blue});
}

Future<void> setTriangle_Green(bool valueTriangle_green) {
  return Select_Triangle.doc('Triangle_Green')
      .set({'Green': valueTriangle_green});
}

Future<void> setTriangle_Yellow(bool valueTriangle_yellow) {
  return Select_Triangle.doc('Triangle_Yellow')
      .set({'Yellow': valueTriangle_yellow});
}

Future<void> setTriangle_Red(bool valueTriangle_red) {
  return Select_Triangle.doc('Triangle_Red').set({'Red': valueTriangle_red});
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
Future<void> setElectronic_Servo(bool valueElectronic_Servo) {
  return Select_Electronic.doc('Electronic_Servo')
      .set({'Servo': valueElectronic_Servo});
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

void reset() {
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
}
