import 'package:appdemo2/screen/2screen.dart';
import 'package:appdemo2/screen/3screen.dart';
import 'package:appdemo2/screen/home.dart';
// ignore: unused_import
import 'package:appdemo2/screen/run.dart';
import 'package:flutter/material.dart';
// ignore: unused_import

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: <String, WidgetBuilder>{
        '/Home': (_) => Home(),
        '/TwoScreen': (_) => TwoScreen(),
        '/Run': (_) => Run(),
        '/ThreeScreen': (_) => ThreeScreen(),
      },
    );
  }
}
