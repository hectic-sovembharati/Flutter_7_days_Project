import 'package:flutter/material.dart';
import 'quiz_app.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}