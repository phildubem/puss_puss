import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MSignupForm extends StatelessWidget {
  const MSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: Msizes.xs),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: Msizes.snm,
                        height: Msizes.snm,
                        child: Checkbox(value: true, onChanged: (value) {})),
                    Text(MTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(MTexts.forgotPassword),
                )
              ],
            ),
            SizedBox(height: Msizes.sm),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(MTexts.signIn))),
            SizedBox(height: Msizes.md),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {}, child: Text(MTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
