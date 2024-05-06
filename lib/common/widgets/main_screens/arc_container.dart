import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_function.dart';

class MArcContainer extends StatelessWidget {
  const MArcContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MHelperFunctions.screenHeight() * 0.015,
      width: MHelperFunctions.screenWidth() * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12)),
          border: Border(
              top: BorderSide(
                  width: 0.5, color: Colors.white),
              bottom: BorderSide.none)),
    );
  }
}