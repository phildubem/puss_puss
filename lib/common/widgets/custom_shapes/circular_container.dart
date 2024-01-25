import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class MCircularContainer extends StatelessWidget {
  const MCircularContainer({
    super.key, this.width = 400, this.height = 400, this.padding = 8, this.child, this.bg = MColors.light, this.radius =400,
  });

  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Widget? child;
  final Color? bg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: bg),
    );
  }
}
