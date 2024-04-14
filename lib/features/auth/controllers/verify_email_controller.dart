import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:puss_puss/common/widgets/success_screen/success_screen.dart';
import 'package:puss_puss/data/repositories/auth_repo.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';
import 'package:puss_puss/utils/popups/loaders.dart';

import '../../../utils/constants/image_strings.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTiimerForRedirect();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthRepo.instance.sendEmailVerification();
      MLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Please check you inbox and verify your email.');
    } catch (e) {
      MLoaders.errorSnackBar(title: 'Opps!!', message: e.toString());
    }
  }

  setTiimerForRedirect() {
    Timer.periodic(Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccesPage(
              title: MTexts.accountCreatedTitle,
              subTitle: MTexts.accountCreatedSubTitle,
              img: MImages.logo,
              button: MTexts.mContinue,
              onPressed: () => AuthRepo.instance.screenRedirect(),
            ));
      }
    });
  }

  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => SuccesPage(
              title: MTexts.accountCreatedTitle,
              subTitle: MTexts.accountCreatedSubTitle,
              button: MTexts.mContinue,
              img: MImages.logo,
              onPressed: () => AuthRepo.instance.screenRedirect(),
            ));
    }
  }
}
