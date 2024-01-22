import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/features/auth/views/verify+/verify_email.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MSignupForm extends StatelessWidget {
  const MSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Msizes.xl),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: MTexts.firstName),
                  ),
                ),
                SizedBox(width: Msizes.sm),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: MTexts.lasttName),
                  ),
                ),
              ],
            ),
            SizedBox(height: Msizes.md),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user_edit),
                  labelText: MTexts.userName),
            ),
            SizedBox(height: Msizes.md),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct), labelText: MTexts.email),
            ),
            SizedBox(height: Msizes.md),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.call), labelText: MTexts.phoneNo),
            ),
            SizedBox(height: Msizes.md),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: Msizes.smd),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: Msizes.snm,
                        height: Msizes.snm,
                        child: Checkbox(value: true, onChanged: (value) {})),
                    SizedBox(width: Msizes.xxs),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: '${MTexts.iAgreeTo} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${MTexts.the} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${MTexts.privacyPolicy} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color:
                                        dark ? MColors.white : MColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark
                                        ? MColors.white
                                        : MColors.primary)),
                        TextSpan(
                            text: '${MTexts.and} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: '${MTexts.termsOfUse} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color:
                                        dark ? MColors.white : MColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark
                                        ? MColors.white
                                        : MColors.primary)),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: Msizes.xl),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => VerifyEmailScreen()), child: Text(MTexts.createAccount))),

            //Signin Button on the sign up page
            //SizedBox(height: Msizes.md),
            // SizedBox(
            //   width: double.infinity,
            //   child: OutlinedButton(
            //     onPressed: () {},
            //     child: Text.rich(
            //       TextSpan(
            //         children: [
            //           TextSpan(
            //             text: '${MTexts.alreadyHave} ',
            //             style: Theme.of(context).textTheme.bodyMedium!.apply(
            //                 color: dark ? MColors.white : MColors.primary),
            //           ),
            //           TextSpan(
            //             text: ' ${MTexts.signIn}',
            //             style: Theme.of(context).textTheme.titleMedium!.apply(
            //                 color: dark ? MColors.white : MColors.primary),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
