import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/features/auth/views/verify+/success.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: Icon(Iconsax.close_square))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Msizes.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(height: 240, image: AssetImage(MImages.logo)),
              Text(MTexts.verifyEmailTitle,
              textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: Msizes.xxs),
              Text(MTexts.verifyEmailSubTitle,
              textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: Msizes.md),
              Text('hello@pusspuss.com ',
              textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: Msizes.xl),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen()),
                      child: Text(MTexts.mContinue))),
              SizedBox(height: Msizes.md),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: Text(MTexts.resendEmail))),
              SizedBox(height: Msizes.nm),
            ],
          ),
        ),
      ),
    );
  }
}
