import 'package:flutter/material.dart';

import '../../styles/shadows.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class MShareContainer extends StatelessWidget {
  const MShareContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Msizes.md),
      child: Container(
        padding: EdgeInsets.all(Msizes.md),
        width: MHelperFunctions.screenWidth(),
        decoration: BoxDecoration(
            color: MHelperFunctions.isDarkMode(context)
                ? MColors.primary.withOpacity(0.4)
                : MColors.light,
            boxShadow: [MShadowStyle.verticalShadow],
            borderRadius: BorderRadius.circular(Msizes.nm)),
        child: child
      ),
    );
  }
}
