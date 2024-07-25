import 'package:flutter/material.dart';
// import 'package:intro_flutter/styled_text.dart';

// ignore: prefer_typing_uninitialized_variables
const topAlignment = Alignment.topLeft;
const bottomAlignment = Alignment.bottomRight;

class ColorContainer extends StatelessWidget {
  const ColorContainer(this.colors, {super.key});

  final List<Color> colors;

  void diceRoller() {}

  @override
  Widget build(context) {
    // topAlignment;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: topAlignment, end: bottomAlignment, colors: colors),
      ),
      child: Center(
          // Center aligns its child widget within the available space.
          // child: StyledText('das is brot'),
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-1.png',
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
      )),
    );
  }
}
// throw UnimplementedError();