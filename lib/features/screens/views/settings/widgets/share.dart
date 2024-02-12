import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/main_screens/share_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MSettingsShare extends StatelessWidget {
  const MSettingsShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MShareContainer(
      child: Row(
        children: [
          Expanded(
            child: Text(MTexts.referMsg,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2),
          ),
          SizedBox(width: Msizes.md),
          GestureDetector(
            onTap: () {},
            child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MHelperFunctions.isDarkMode(context)
                        ? MColors.primary.withOpacity(0.9)
                        : MColors.primary.withOpacity(0.09)),
                child: Icon(Iconsax.link_2,
                    color: MHelperFunctions.isDarkMode(context)
                        ? MColors.light
                        : MColors.primary)),
          ),
        ],
      ),
    );
  }
}
