import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MLoginHeader extends StatelessWidget {
  const MLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(height: 120, image: AssetImage(MImages.logo)),
        Text(MTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: Msizes.xxs),
        Text(MTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}