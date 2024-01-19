import 'package:flutter/material.dart';

class MColors {
  MColors._();

  static const Color primary = Color(0xff15062d);
  static const Color secondary = Color(0xff15062d);
  static const Color accent = Color(0xff6366F1);

  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color darkgrey = Color(0xff4f4f4f);
  static const Color grey = Color(0xff939393);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);

  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6c757d);

  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  static const Gradient mainGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xff15062d), Color(0xff1b0a34)],
  );
}
