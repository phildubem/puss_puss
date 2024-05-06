import 'package:flutter/material.dart';
import 'package:puss_puss/utils/device/device_utility.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class MTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Material(
        color: MHelperFunctions.isDarkMode(context)
            ? MColors.primary
            : MColors.primary.withOpacity(0.09),
        borderRadius: BorderRadius.circular(10),
        child: TabBar(
          tabs: tabs,
          tabAlignment: TabAlignment.center,
          dividerColor: Colors.transparent,
          isScrollable: true,
          indicatorColor: MHelperFunctions.isDarkMode(context)
              ? MColors.light
              : MColors.primary,
          unselectedLabelColor: MColors.darkgrey,
          labelColor: MHelperFunctions.isDarkMode(context)
              ? MColors.light
              : MColors.primary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}
