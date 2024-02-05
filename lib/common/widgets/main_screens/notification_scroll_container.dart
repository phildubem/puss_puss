import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_function.dart';

class MNotificationsScrollBar extends StatelessWidget {
  const MNotificationsScrollBar({
    super.key,
    this.showBg = true,
  });

  final bool showBg;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Container(
      height: 45,
      width: MDeviceUtils.getScreenWidth(context),
      margin: EdgeInsets.all(Msizes.md),
      padding: EdgeInsets.all(Msizes.xxs),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: MColors.grey.withOpacity(0.5))),
      child: GestureDetector(
        onTap: () {},
        child: CarouselSlider.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
              Container(
            height: 45,
            width: MHelperFunctions.screenWidth() * 0.99,
            padding: EdgeInsets.only(
              left: Msizes.xs,
              right: Msizes.xs,
            ),
            margin: EdgeInsets.only(right: Msizes.ssm),
            decoration: BoxDecoration(
                color: showBg
                    ? dark
                        ? MColors.grey.withOpacity(0.3)
                        : MColors.white.withOpacity(0.5)
                    : null,
                borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image(image: AssetImage(MImages.logo)),
                    ),
                    SizedBox(width: Msizes.sm),
                    Text('Follow Pusspuss on Twitter!',
                        style: Theme.of(context).textTheme.labelLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis)
                  ],
                ),
                Text('${itemIndex + 1}/6')
              ],
            ),
          ),
          options: CarouselOptions(
            height: 40,
            autoPlay: true,
            viewportFraction: 1,
          ),
        ),
      ),
    );
  }
}
