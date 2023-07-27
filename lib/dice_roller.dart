import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activediceimage = 'assets/images/dice-1.png';
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activediceimage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            setState(() {
              var diceroller = Random().nextInt(6) + 1;
              activediceimage = "assets/images/dice-$diceroller.png";
            });
            print("changing image....");
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text("Roll The Dice"),
        ),
      ],
    );
  }
}
