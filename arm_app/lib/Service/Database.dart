// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

// class Database {
//   void getdata(String Count ) {
//     final TestDb = FirebaseFirestore.instance.collection("Test");
//     final query = TestDb.where("cont", isNotEqualTo: 0);
//     query.get().then((QuerySnapshot) {
//       QuerySnapshot.docs.forEach((doc) {
//         print(doc['cont']);
//         var Count = doc['cont'].toString();
//       });
//     });
   
//   }
// }


