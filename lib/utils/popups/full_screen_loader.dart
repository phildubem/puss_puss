import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:puss_puss/common/widgets/loaders/animation_loader.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';

class MFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showCupertinoDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: MHelperFunctions.isDarkMode(Get.context!)
              ? MColors.primary
              : MColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 250),
              MAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
