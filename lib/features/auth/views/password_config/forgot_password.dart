import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/features/auth/views/password_config/reset_password.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../utils/constants/sizes.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left_2)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Msizes.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(MTexts.forgotPassword,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: Msizes.xxs),
              Text(MTexts.forgotPasswordSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: Msizes.sxl),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct), labelText: MTexts.email),
              ),
              SizedBox(height: Msizes.sxl),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => ResetPasswordScreen()),
                      child: Text(MTexts.mContinue))),
              SizedBox(height: Msizes.md),
            ],
          ),
        ),
      ),
    );
  }
}
