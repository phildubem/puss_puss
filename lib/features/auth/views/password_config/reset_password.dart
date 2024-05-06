import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';

import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Iconsax.close_square,
                  color: dark ? MColors.white : MColors.primary))
        ],
      ),
      body: SingleChildScrollView(
        child: SuccesPage(
          img: MImages.logo,
          title: MTexts.changetPasswordTitle,
          subTitle: MTexts.changePasswordSubTitle,
          button: MTexts.done,
          onPressed: () {},
          widget: OutlinedButton(
            onPressed: () {},
            child: Text(MTexts.resendEmail),
          ),
        ),
      ),
    );
  }
}
