// @dart=2.9
import 'package:arm_app/Auto.dart';
import 'package:arm_app/Constants.dart';
import 'package:arm_app/Dashboard/Check/Cylinder.dart';
import 'package:arm_app/Dashboard/Check/Electronic.dart';
import 'package:arm_app/Dashboard/Check/Srevo.dart';

import 'package:arm_app/Homepage.dart';
import 'package:arm_app/Manual.dart';
import 'package:arm_app/Manual_R.dart';
import 'package:arm_app/Manual_R2..dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          appBarTheme: AppBarTheme(backgroundColor: bgAppbar),
          textTheme:
              GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply(
                    bodyColor: Colors.white,
                  ))),
      home: Homepage(),
    );
  }
}
