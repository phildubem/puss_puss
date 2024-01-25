import 'package:flutter/material.dart';
import 'package:puss_puss/common/styles/spacing_styles.dart';
import 'package:puss_puss/features/auth/views/login/widgets/login_form.dart';
import 'package:puss_puss/features/auth/views/login/widgets/login_header.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.padding50pxTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MLoginHeader(),
              MLoginForm(),
              MFormDivider(dividerText: MTexts.orSignInWith),
              SizedBox(height: Msizes.xl),
              MSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}







