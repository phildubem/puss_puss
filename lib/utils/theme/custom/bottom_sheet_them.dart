import 'package:flutter/material.dart';

class MBottomSheetTheme {
  MBottomSheetTheme._();

  static BottomSheetThemeData lightAppBarTheme = BottomSheetThemeData(
      showDragHandle: true,
      modalBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      constraints: BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );


  static BottomSheetThemeData darkAppBarTheme = BottomSheetThemeData(
      showDragHandle: true,
      modalBackgroundColor: Colors.black,
      backgroundColor: Colors.black,
      constraints: BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );
}
