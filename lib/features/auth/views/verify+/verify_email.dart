import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/data/repositories/auth_repo.dart';
import 'package:puss_puss/features/auth/controllers/verify_email_controller.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String ? email;

  @override
  Widget build(BuildContext context) {
    final bool dark = MHelperFunctions.isDarkMode(context);

    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthRepo.instance.logout(),
              icon: Icon(Iconsax.close_square),
              color: dark ? MColors.white : MColors.primary)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Msizes.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                  width: MHelperFunctions.screenWidth() * 0.6,
                  image: AssetImage(MImages.logo)),
              Text(MTexts.verifyEmailTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: Msizes.xxs),
              Text(MTexts.verifyEmailSubTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: Msizes.md),
              Text(email ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: Msizes.xl),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.checkEmailVerificationStatus(),
                      child: Text(MTexts.mContinue))),
              SizedBox(height: Msizes.md),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => controller.sendEmailVerification(), child: Text(MTexts.resendEmail))),
              SizedBox(height: Msizes.nm),
            ],
          ),
        ),
      ),
    );
  }
}
