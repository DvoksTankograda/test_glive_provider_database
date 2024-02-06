import 'package:flutter/material.dart';

abstract class StylesApp {
  static final ButtonStyle blueButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.blue),
    foregroundColor: MaterialStateProperty.all(Colors.white),
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
    ),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 7,
      ),
    ),
  );

  static const TextStyle sizeTextBlack =
  TextStyle(fontSize: 18.0, color: Colors.black);
  static const textFieldDecorator = InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10),
  );
}