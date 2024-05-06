import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/features/auth/controllers/signup_controller.dart';
import 'package:puss_puss/features/screens/views/settings/inner_pages/privacy.dart';
import 'package:puss_puss/features/screens/views/settings/inner_pages/terms.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';
import 'package:puss_puss/utils/validators/validator.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MSignupForm extends StatelessWidget {
  const MSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Msizes.xl),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.fistName,
                    validator: (value) =>
                        MValidator.validateEmptyText('First name', value),
                    expands: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: MTexts.firstName),
                  ),
                ),
                SizedBox(width: Msizes.sm),
                Expanded(
                  child: TextFormField(
                    controller: controller.lastName,
                    validator: (value) =>
                        MValidator.validateEmptyText('Last name', value),
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
              controller: controller.username,
              validator: (value) =>
                  MValidator.validateEmptyText('Username', value),
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user_edit),
                  labelText: MTexts.userName),
            ),
            SizedBox(height: Msizes.md),
            TextFormField(
              validator: (value) => MValidator.validateEmail(value),
              controller: controller.email,
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct), labelText: MTexts.email),
            ),
            SizedBox(height: Msizes.md),
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => MValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: MTexts.password,
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
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
                        child: Obx(
                          () => Checkbox(
                              value: controller.privacyPolicy.value,
                              onChanged: (value) => controller.privacyPolicy
                                  .value = !controller.privacyPolicy.value),
                        )),
                    SizedBox(width: Msizes.xxs),
                    Text('${MTexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    Text('${MTexts.the} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    GestureDetector(
                      onTap: () => Get.to(() => PrivacyScreen()),
                      child: Text('${MTexts.privacyPolicy} ',
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark ? MColors.white : MColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? MColors.white : MColors.primary)),
                    ),
                    Text('${MTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    GestureDetector(
                      onTap: () => Get.to(() => TermsScreen()),
                      child: Text('${MTexts.termsOfUse} ',
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark ? MColors.white : MColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? MColors.white : MColors.primary)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: Msizes.xl),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.signup(),
                    child: Text(MTexts.createAccount))),

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
