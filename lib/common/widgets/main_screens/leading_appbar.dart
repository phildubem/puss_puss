import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class MLeadingAppBarWidget extends StatelessWidget {
  const MLeadingAppBarWidget({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color:
                  MColors.light.withOpacity(0.8),
              borderRadius: BorderRadius.all(Radius.circular(Msizes.smd))),
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
    );
  }
}