import 'package:flutter/material.dart';

class MOutlinedButtonTheme {
  MOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style:OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.black),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      textStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );


  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style:OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.black),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      textStyle: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );
}
