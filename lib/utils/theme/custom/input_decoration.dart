import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MInputDecorationTheme {
  MInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MColors.grey,
    suffixIconColor: MColors.grey,

    labelStyle: TextStyle().copyWith(fontSize: 14, color: MColors.primary),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: MColors.primary),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: MColors.primary.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.primary),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.warning),
    ),
  );


   static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MColors.grey,
    suffixIconColor: MColors.grey,

    labelStyle: TextStyle().copyWith(fontSize: 14, color: MColors.white),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: MColors.white),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: MColors.white.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.white),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(width: 1, color: MColors.warning),
    ),
  );

}