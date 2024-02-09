import 'package:flutter/material.dart';
import 'package:puss_puss/utils/constants/colors.dart';

class MShadowStyle {
  static final verticalShadow = BoxShadow(
    color: MColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );

  static final horizontalShadow = BoxShadow(
    color: MColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );
}
