import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class MSettingsHeader extends StatelessWidget {
  const MSettingsHeader({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: dark
              ? MColors.light.withOpacity(0.8)
              : MColors.primary.withOpacity(0.4),
          borderRadius:
              BorderRadius.all(Radius.circular(Msizes.smd))),
      child: Image(
        width: Msizes.sxxxl,
        height: Msizes.sxxxl,
        image: AssetImage(MImages.logo),
      ),
    );
  }
}