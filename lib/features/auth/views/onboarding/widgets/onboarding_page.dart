import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
  });

  final String img, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Msizes.xl),
      child: Column(
        children: [
          Image(
              width: MHelperFunctions.screenWidth() * 0.9,
              height: MHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(img)),
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          SizedBox(height: Msizes.smd),
          Text(subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
