import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/features/auth/views/signup/widgets/signup_form.dart';
import 'package:puss_puss/utils/constants/sizes.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_function.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Iconsax.arrow_left_2),
              color: dark ? MColors.white : MColors.primary)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Msizes.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(MTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              MSignupForm(),
              SizedBox(height: Msizes.sm),
              MFormDivider(dividerText: MTexts.orSignUpWith),
              SizedBox(height: Msizes.xl),
              MSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
