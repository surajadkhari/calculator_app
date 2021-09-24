import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {required this.colour,
      required this.textColour,
      required this.buttonText});
  final Color colour;
  final Color textColour;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: colour,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textColour),
            ),
          ),
        ),
      ),
    );
  }
}

