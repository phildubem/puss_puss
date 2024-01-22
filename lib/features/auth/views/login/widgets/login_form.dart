import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/features/auth/views/signup/signup.dart';
import 'package:puss_puss/utils/nav.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../password_config/forgot_password.dart';

class MLoginForm extends StatelessWidget {
  const MLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Msizes.xl),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct), labelText: MTexts.email),
            ),
            SizedBox(height: Msizes.xl),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: Msizes.sm),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: Msizes.snm, height: Msizes.snm, child: Checkbox(value: true, onChanged: (value) {})),
                    Text(MTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => ForgotPasswordScreen()),
                  child: Text(MTexts.forgotPassword),
                )
              ],
            ),
            SizedBox(height: Msizes.md),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => NavBar()), child: Text(MTexts.signIn))),
            SizedBox(height: Msizes.md),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => SignupScreen()),
                    child: Text(MTexts.createAccount))),
            SizedBox(height: Msizes.nm),
          ],
        ),
      ),
    );
  }
}
