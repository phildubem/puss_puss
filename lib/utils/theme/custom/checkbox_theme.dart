import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MCheckBoxTheme {
  MCheckBoxTheme._();


  static CheckboxThemeData lightAppBarTheme = CheckboxThemeData(
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return MColors.white;
      } else {
        return Colors.transparent;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return MColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), side: BorderSide(color: MColors.primary)),
  );

  static CheckboxThemeData darkAppBarTheme = CheckboxThemeData(
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return MColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return MColors.white;
      } else {
        return Colors.transparent;
      }
    }),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), side: BorderSide(color: MColors.white)),
  );
}
