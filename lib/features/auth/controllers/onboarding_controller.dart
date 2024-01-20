import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNav(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    // ignore: unrelated_type_equality_checks
    if (currentPageIndex == 2) {
      Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
