import 'package:flutter/material.dart';
import 'package:puss_puss/features/auth/views/signup/widgets/signup_form.dart';
import 'package:puss_puss/utils/constants/sizes.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
