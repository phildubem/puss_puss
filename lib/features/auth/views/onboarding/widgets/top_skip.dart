import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puss_puss/features/auth/controllers/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class TopSkipButton extends StatelessWidget {
  const TopSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Positioned(
        top: MDeviceUtils.getAppBarHeight(),
        right: Msizes.xl,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: Obx(() => Text(
                controller.currentPageIndex.value == 2 ? ' ' : 'Skip',
                style: Theme.of(context).textTheme.labelLarge))));
  }
}
