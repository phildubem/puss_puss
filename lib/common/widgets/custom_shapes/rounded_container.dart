import 'package:flutter/material.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/constants/sizes.dart';

import '../../../utils/helpers/helper_function.dart';

class MRoundedContainer extends StatelessWidget {
  const MRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.radius = Msizes.nm,
    this.child,
    this.showBorder = false,
    this.borderColor = MColors.light,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: MHelperFunctions.isDarkMode(context) ? MColors.primary.withOpacity(0.9) : MColors.light.withOpacity(0.7),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
