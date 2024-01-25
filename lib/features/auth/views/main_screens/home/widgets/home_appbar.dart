
import 'package:flutter/material.dart';
import 'package:puss_puss/common/widgets/appbar/appbar.dart';

import '../../../../../../common/widgets/main_screens/notification_icon.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../../../../../utils/helpers/helper_function.dart';

class MHomeAppBar extends StatelessWidget {
  const MHomeAppBar({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return MAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: dark
                    ? MColors.light.withOpacity(0.8)
                    : MColors.primary.withOpacity(0.4),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              style: ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image(
                width: Msizes.xxl,
                height: Msizes.xxl,
                image: AssetImage(MImages.logo),
              ),
            ),
          ),
          SizedBox(width: Msizes.xs),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${MTexts.hi},',
                style: Theme.of(context).textTheme.labelMedium!,
              ),
              Text(
                'PhilDubem 👋🏻',
                style: Theme.of(context).textTheme.headlineSmall!,
              ),
            ],
          ),
        ],
      ),
      actions: [MNotificationIcon(onPressed: () {},)],
    );
  }
}

