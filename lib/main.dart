import 'package:flutter/material.dart';
import 'package:intro_flutter/color_gradient.dart';

void main() {
  runApp(
    // runApp is a built-in flutter
    //-function to run the dart code in a mobile application
    const MaterialApp(
      // MaterialApp is the root widget of a Flutter app, providing
      // default look and feel and navigation.
      home: Scaffold(
        // Scaffold provides a basic app bar, body, and navigation drawer.
        // backgroundColor: Color.fromRGBO(238, 238, 238, 1),

        body: ColorContainer([
          Color.fromRGBO(0, 195, 172, 0.898),
          Color.fromRGBO(100, 200, 10, 1)
        ]),
      ),
    ),
  );
}
