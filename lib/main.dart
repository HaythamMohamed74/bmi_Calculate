import 'package:bmi_calculat/home.dart';
import 'package:bmi_calculat/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "home":(context) => Home()
        // ,"result":(context) => Result()
      } ,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }}
