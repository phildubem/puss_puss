import 'package:flutter/material.dart';
import 'package:puss_puss/features/auth/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class BottomNavDot extends StatelessWidget {
  BottomNavDot({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: MDeviceUtils.getBottomNavigationBarHeight() + 30,
        left: Msizes.xl,
        child: SmoothPageIndicator(
          controller:controller.pageController,
          onDotClicked: controller.dotNav,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? MColors.light : MColors.primary,
              dotHeight: 8),
        ));
  }
}
