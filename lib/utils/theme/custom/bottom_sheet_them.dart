import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MBottomSheetTheme {
  MBottomSheetTheme._();

  static BottomSheetThemeData lightAppBarTheme = BottomSheetThemeData(
      showDragHandle: true,
      modalBackgroundColor: MColors.white,
      backgroundColor: MColors.white,
      constraints: BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );


  static BottomSheetThemeData darkAppBarTheme = BottomSheetThemeData(
      showDragHandle: true,
      modalBackgroundColor: MColors.primary,
      backgroundColor: MColors.primary,
      constraints: BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );
}
