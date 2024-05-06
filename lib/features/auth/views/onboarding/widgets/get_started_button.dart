import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers/onboarding_controller.dart';

class GetStartedButton extends StatelessWidget {
  GetStartedButton({super.key});

  final controller = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MDeviceUtils.getBottomNavigationBarHeight() + 20,
        right: Msizes.xl,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          child: Row(
            children: [
              Obx(() => Text(controller.currentPageIndex.value == 2
                  ? 'Get Started'
                  : 'Next')),
              SizedBox(width: Msizes.sxxs),
              Icon(Iconsax.arrow_right_3)
            ],
          ),
        ));
  }
}
