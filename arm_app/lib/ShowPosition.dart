// @dart=2.9

import 'package:arm_app/Constants.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class Show_pos extends StatefulWidget {
  Show_pos({Key key}) : super(key: key);

  @override
  _Show_posState createState() => _Show_posState();
}

class _Show_posState extends State<Show_pos> {
  Query _Save_angle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _Save_angle =
        FirebaseDatabase.instance.reference().child('Save_angle/position');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Position'),
      ),
      body: Container(
        child: FirebaseAnimatedList(
          query: _Save_angle,
          itemBuilder: (BuildContext context, DataSnapshot snapshot,
              Animation<double> animation, int index) {
            return SizedBox(
              width: 200,
              height: 100,
              child: Card(
                color: bgAppbar,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: ListTile(
                    title: Text(snapshot.value['name'].toString()),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
