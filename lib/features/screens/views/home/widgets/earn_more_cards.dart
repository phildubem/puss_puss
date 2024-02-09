import 'package:flutter/material.dart';
import 'package:puss_puss/common/styles/shadows.dart';
import 'package:puss_puss/common/widgets/custom_shapes/rounded_container.dart';
import 'package:puss_puss/common/widgets/custom_shapes/rounded_image.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/constants/image_strings.dart';
import 'package:puss_puss/utils/constants/sizes.dart';

import '../../../../../utils/helpers/helper_function.dart';

class MEarnMoreCard extends StatelessWidget {
  const MEarnMoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return SizedBox(
      height: MHelperFunctions.screenHeight() * 0.23,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(right: Msizes.sm),
            child: Container(
              width: MHelperFunctions.screenWidth() * 0.27,
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                boxShadow: [MShadowStyle.verticalShadow],
                borderRadius: BorderRadius.circular(Msizes.nm),
                color: MHelperFunctions.isDarkMode(context)
                    ? MColors.primary.withOpacity(0.4)
                    : MColors.light,
              ),
              child: Column(children: [
                MRoundedContainer(
                  height: MHelperFunctions.screenHeight() * 0.14,
                  width: MHelperFunctions.screenWidth() * 0.22,
                  padding: EdgeInsets.symmetric(
                      horizontal: Msizes.ssm, vertical: Msizes.ssm),
                  bg: dark ? MColors.primary.withOpacity(0.9) : MColors.light,
                  child: Stack(children: [
                    MRoundedImage(
                        imageUrl: MImages.gift,
                        bg: Colors.transparent,
                        applyRadius: true),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 15,
                        padding: EdgeInsets.symmetric(horizontal: Msizes.xxs),
                        decoration: BoxDecoration(
                            color: dark
                                ? MColors.white.withOpacity(0.3)
                                : Colors.deepPurple.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(Msizes.ssm),
                                topRight: Radius.circular(Msizes.ssm))),
                        child: Text(
                          '${index + 1}',
                          style: Theme.of(context).textTheme.labelSmall!,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: Msizes.xs, bottom: Msizes.sxxs),
                    child: MRoundedContainer(
                      width: MHelperFunctions.screenWidth() * 0.19,
                      radius: Msizes.xs,
                      bg: dark
                          ? Colors.deepPurple.withOpacity(0.6)
                          : Colors.deepPurple.withOpacity(0.3),
                      padding: EdgeInsets.symmetric(vertical: Msizes.xxs),
                      child: Text('Claim',
                          style: Theme.of(context).textTheme.labelLarge,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
