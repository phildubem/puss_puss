import 'package:flutter/material.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/constants/sizes.dart';

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
    this.bg = MColors.white,
    this.borderColor = MColors.light,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color bg;
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
        color: bg,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
