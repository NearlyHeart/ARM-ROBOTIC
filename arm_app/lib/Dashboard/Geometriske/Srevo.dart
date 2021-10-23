// @dart=2.9

import 'package:arm_app/Constants.dart';
import 'package:arm_app/Service/Database.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

final Future<FirebaseApp> firebase = Firebase.initializeApp();
CollectionReference Cube_db = FirebaseFirestore.instance.collection("Servo");
final Test_db = FirebaseFirestore.instance.collection("Count_servo");

final Stream<QuerySnapshot> _usersStream =
    FirebaseFirestore.instance.collection('Cube').snapshots();

class Srevo extends StatelessWidget {
  const Srevo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Srevo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  width: 180,
                  height: 180,
                  child: Image.asset(
                    'assets/images/srevo.png',
                  ),
                ),
                SizedBox(width: 15),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Count_servo')
                      .doc('pnkkmSjpBx0cD3VmIupM') //ID OF DOCUMENT
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return new CircularProgressIndicator();
                    }
                    var document = snapshot.data;
                    // new Text(document['cont'].toString());
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
                          SizedBox(height: 50),
                          Text(
                            "TOTAL",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            document['count'].toString(),
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

                // obj total
              ],
            ),
            Container(
              child: StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('Servo').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView(
                      reverse: true,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      children: snapshot.data.docs.map((document) {
                        final total = snapshot.data.docs.length;
                        var time = document["time"];
                        set(total);
                        return Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.green[900],
                              radius: 30,
                              child: FittedBox(
                                child: Text(
                                  document["name"],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(
                              document["name"],
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              document["type"],
                              style: TextStyle(
                                color: Colors.green[900],
                              ),
                            ),
                            trailing: Text(
                              document["time"].toDate().toString(),
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  }
                },
              ),
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

// Future<void> add() {
//   return Cube_db.add(
//     {
//       'name': 'iiiii',
//       'time': 'test',
//       'type': 'Electronic',
//     },
//   )
//       .then((value) => print("User Added"))
//       .catchError((error) => print("Failed to add user: $error"));
// }
