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

// font style
const TextStyle headerStyle = TextStyle(color: bgBlack, fontSize: 22, fontWeight: FontWeight.w500,fontFamily: 'Inter',);
const TextStyle pageHeaderStyle = TextStyle(color: bgBlack, fontSize: 20, fontWeight: FontWeight.w500,fontFamily: 'Inter',);
const TextStyle primaryFontStyle = TextStyle(color: bgBlack, fontSize: 18, fontWeight: FontWeight.w400,fontFamily: 'Inter',);
const TextStyle primaryFont2Style = TextStyle(color: bgBlack, fontSize: 18, fontWeight: FontWeight.w500,fontFamily: 'Inter',height: 0.08);
const TextStyle bodyTextStyle = TextStyle(color: bgBlack, fontSize: 18, fontWeight: FontWeight.w400,fontFamily: 'Inter', );
const TextStyle grayTextStyle = TextStyle(color: bgBlack, fontSize: 14, fontWeight: FontWeight.w300,fontFamily: 'Inter', );
