import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Msizes.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(height: 240, image: AssetImage(MImages.logo)),
              Text(MTexts.accountCreatedTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: Msizes.xxs),
              Text(MTexts.accountCreatedSubTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: Msizes.xl),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(MTexts.mContinue))),
              SizedBox(height: Msizes.md),
            ],
          ),
        ),
      ),
    );
  }
}
