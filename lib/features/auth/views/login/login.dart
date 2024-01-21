import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/common/styles/spacing_styles.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/constants/image_strings.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.padding50pxTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(height: 120, image: AssetImage(MImages.logo)),
                  Text(MTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height: Msizes.xxs),
                  Text(MTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: Msizes.xl),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.direct),
                            labelText: MTexts.email),
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
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(MTexts.rememberMe),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(MTexts.forgotPassword),
                          )
                        ],
                      ),
                      SizedBox(height: Msizes.md),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text(MTexts.signIn))),
                      SizedBox(height: Msizes.md),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(MTexts.createAccount))),
                      SizedBox(height: Msizes.nm),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                          color: dark ? MColors.grey : MColors.primary,
                          thickness: 0.5,
                          indent: 60,
                          endIndent: 5)),
                  Text(MTexts.orSignInWith.capitalize!,
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                      child: Divider(
                          color: dark ? MColors.grey : MColors.primary,
                          thickness: 0.5,
                          indent: 5,
                          endIndent: 60)),
                ],
              ),
              SizedBox(height: Msizes.xl),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: dark ? MColors.grey : MColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(
                        width: Msizes.snm,
                        height: Msizes.snm,
                        image: AssetImage(MImages.google),
                      ),
                    ),
                  ),
                  SizedBox(width: Msizes.sm),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: dark ? MColors.grey : MColors.primary),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(
                        width: Msizes.snm,
                        height: Msizes.snm,
                        image: AssetImage(MImages.facebook),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
