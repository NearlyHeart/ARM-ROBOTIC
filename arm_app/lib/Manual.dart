import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  
  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Cube').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: snapshot.data!.docs.map((document) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: FittedBox(
                        child: Text(document["full_name"]),
                      ),
                    ),
                    title: Text(document["1"] + document["full_name"]),
                    subtitle: Text(document["full_name"]),
                  ),
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}




















// class Manual extends StatefulWidget {
//   @override
//   _ManualState createState() => _ManualState();
// }

// class _ManualState extends State<Manual> {
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   CollectionReference users = FirebaseFirestore.instance.collection('Cube');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             ElevatedButton(
//                 onLongPress: () {
//                   addUser();
//                 },
//                 onPressed: () {
//                   getUser();
//                 },
//                 child: Text("เพิ่ม")),
//           ],
//         ),
//       ),
//     );
//   }

//   void writeData() {}
//   void updateData() {}

//   Future<void> addUser() {
//     return users
//         .add({
//           'full_name': 'John Doe',
//         })
//         .then((value) => print("User Added"))
//         .catchError((error) => print("Failed to add user: $error"));
//   }

//   Future<void> getUser() {
//     return users
//         .get()
//         .then((value) => print("Get"))
//         .catchError((error) => print("Failed to add user: $error"));
//   }
// }
