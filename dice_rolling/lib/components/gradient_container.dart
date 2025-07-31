import 'package:flutter/material.dart';
import 'dice_roller.dart';

const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;




class GradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignement,
          end: endAlignement,
          colors:[
          Colors.purple,
          Colors.deepPurple],
          )
      ),
      child: const DiceRoller(),
    );
  }
}