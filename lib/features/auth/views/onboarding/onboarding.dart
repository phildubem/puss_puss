import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puss_puss/features/auth/views/onboarding/widgets/get_started_button.dart';
import 'package:puss_puss/features/auth/views/onboarding/widgets/onboarding_dot_nav.dart';
import 'package:puss_puss/features/auth/views/onboarding/widgets/onboarding_page.dart';
import 'package:puss_puss/features/auth/views/onboarding/widgets/top_skip.dart';
import 'package:puss_puss/utils/constants/image_strings.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../controllers/onboarding_controller.dart';

class OnBoardingscreen extends StatelessWidget {
  const OnBoardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                  img: MImages.onboard1,
                  title: MTexts.onboard1,
                  subtitle: MTexts.onboardSub1),
              OnBoardingPage(
                  img: MImages.onboard2,
                  title: MTexts.onboard2,
                  subtitle: MTexts.onboardSub2),
              OnBoardingPage(
                  img: MImages.onboard3,
                  title: MTexts.onboard3,
                  subtitle: MTexts.onboardSub3),
            ],
          ),
          TopSkipButton(),
          BottomNavDot(),
          GetStartedButton(),
        ],
      ),
    );
  }
}
