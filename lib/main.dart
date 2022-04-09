import 'package:flutter/material.dart';
import 'package:flutter_application_11/bmi_result_screen.dart';
import 'package:flutter_application_11/bmi_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    
      home: bmiscreen(),
   
    );
  }
}

