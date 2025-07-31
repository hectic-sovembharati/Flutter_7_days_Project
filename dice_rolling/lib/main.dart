import 'package:flutter/material.dart';
import 'components/gradient_container.dart';



void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(),
      ),
    );

  }
}