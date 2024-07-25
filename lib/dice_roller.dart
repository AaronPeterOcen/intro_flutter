import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _DiceRollerState means that the class will be private to this file
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void diceRoller() {
    var diceRoll = Random().nextInt(6) + 1; // 1 <> 6
    // setState is used to update the class variables
    // tells the build function to re-execute the build function
    // of the state it is called in
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
    // print('image change');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: diceRoller,
          style: TextButton.styleFrom(
              // padding: ,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: const Text('Roll dice'),
        )
      ],
    );
  }
}
