import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class SuccesPage extends StatelessWidget {
  const SuccesPage({
    super.key,
    required this.title,
    required this.subTitle,
    this.onPressed, required this.img, required this.button, this.widget,
  });

  final String img;
  final String title;
  final String subTitle;
  final String button;
  final VoidCallback? onPressed;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Msizes.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
              width: MHelperFunctions.screenWidth() * 0.6,
              image: AssetImage(img)),
          Text(title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: Msizes.xxs),
          Text(subTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: Msizes.xl),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPressed, child: Text(button))),
          SizedBox(height: Msizes.md),
          SizedBox(
              width: double.infinity,
              child: widget),
        ],
      ),
    );
  }
}
