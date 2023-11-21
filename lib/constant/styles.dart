import 'package:auto_leveling/constant/colors.dart';
import 'package:flutter/material.dart';

// input forms
const inputFormDecoration = InputDecoration(
  labelText: 'Email',
  labelStyle: TextStyle(color: textDark, fontSize: 18),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: bgBlack, width: 1)),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: bgBlack, width: 1)),
);

// outline button
ButtonStyle outlineButton = OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    fixedSize: const Size.fromWidth(386),
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    side: const BorderSide(color: primaryBlue, width: 1));

// primary button
ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: primaryBlue,
  fixedSize: const Size.fromWidth(386),
  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);

// heading style
const TextStyle headerStyle = TextStyle(color: bgBlack, fontSize: 22, fontWeight: FontWeight.w500);
