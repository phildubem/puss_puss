import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class MNotificationIcon extends StatelessWidget {
  const MNotificationIcon({super.key, required this.onPressed, this.iconColor});

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.notification)),
        Positioned(
          right: 7,
          top: 6,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: dark
                  ? MColors.light.withOpacity(0.8)
                  : MColors.primary.withOpacity(0.4),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              '4',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: dark
                        ? MColors.primary.withOpacity(0.9)
                        : MColors.light.withOpacity(0.9),
                    fontSizeFactor: 0.7,
                  ),
            ),
          ),
        )
      ],
    );
  }
}
