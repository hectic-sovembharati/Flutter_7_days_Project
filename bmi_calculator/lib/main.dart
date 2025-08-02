// main.dart
import 'package:flutter/material.dart';
import 'bmi_cal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCal(),
      debugShowCheckedModeBanner: false,
    );
  }
}
