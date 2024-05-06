import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/utils/constants/sizes.dart';
import 'package:puss_puss/utils/device/device_utility.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class MAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.showCenterTile = true});

  final Widget? title;
  final bool showBackArrow;
  final bool? showCenterTile;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Padding(
      padding:
          EdgeInsets.fromLTRB(Msizes.xxs, Msizes.xxs, Msizes.xxs, Msizes.xxs),
      child: AppBar(
        centerTitle: showCenterTile,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left_2),
                color: dark ? MColors.white : MColors.primary)
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(leadingIcon),
                    color: dark ? MColors.white : MColors.primary)
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}
