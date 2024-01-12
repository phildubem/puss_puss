import 'package:flutter/material.dart';
import 'package:puss_puss/utils/theme/custom/appbar_theme.dart';
import 'package:puss_puss/utils/theme/custom/bottom_sheet_them.dart';
import 'package:puss_puss/utils/theme/custom/checkbox_theme.dart';
import 'package:puss_puss/utils/theme/custom/chip_theme.dart';
import 'package:puss_puss/utils/theme/custom/elavated_button_theme.dart';
import 'package:puss_puss/utils/theme/custom/outline_button_them.dart';
import 'package:puss_puss/utils/theme/custom/input_decoration.dart';
import 'package:puss_puss/utils/theme/custom/text_theme.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'NeueMontreal',
    brightness: Brightness.light,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MTextTheme.lightTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MBottomSheetTheme.lightAppBarTheme,
    checkboxTheme: MCheckBoxTheme.lightAppBarTheme,
    chipTheme: MChipTheme.lightChipTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MInputDecorationTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'NeueMontreal',
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MTextTheme.darkTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MBottomSheetTheme.darkAppBarTheme,
    checkboxTheme: MCheckBoxTheme.darkAppBarTheme,
    chipTheme: MChipTheme.darkChipTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MInputDecorationTheme.darkInputDecorationTheme,
  );
}
