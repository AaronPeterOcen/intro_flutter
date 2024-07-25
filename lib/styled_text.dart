import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      // 'Hola Und World!',
      text,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 255, 255),
        decoration: TextDecoration.underline,
        decorationColor: Color.fromARGB(255, 20, 110, 245),
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }
}
