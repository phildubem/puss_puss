import 'package:flutter/material.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../common/widgets/success_screen.dart';
import '../../../../utils/constants/image_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: SuccesPage(
          img: MImages.logo,
          title: MTexts.accountCreatedTitle,
          subTitle: MTexts.accountCreatedSubTitle,
          button: MTexts.mContinue,
          onPressed: () {},
        ),
      ),
    );
  }
}
