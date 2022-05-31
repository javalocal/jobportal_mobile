// @dart=2.9

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/appbar/appbarfix.dart';
import 'package:jobportal/appbar/company_home.dart';
import 'package:jobportal/pages/home.dart';
import 'package:jobportal/pages/joblist.dart';
import 'package:jobportal/welcome/welcome.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:welcome()
    );
  }
}


