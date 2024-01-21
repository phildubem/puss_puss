import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/helpers/helper_function.dart';

class MFormDivider extends StatelessWidget {
  const MFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? MColors.grey : MColors.primary,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(dividerText.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? MColors.grey : MColors.primary,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}