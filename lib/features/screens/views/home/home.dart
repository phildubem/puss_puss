import 'package:flutter/material.dart';
import 'package:puss_puss/common/widgets/custom_shapes/rounded_container.dart';
import 'package:puss_puss/features/screens/views/home/widgets/earn_more_cards.dart';
import 'package:puss_puss/features/screens/views/home/widgets/earning_display.dart';
import 'package:puss_puss/features/screens/views/home/widgets/mine_button.dart';
import 'package:puss_puss/features/screens/views/home/widgets/home_appbar.dart';
import 'package:puss_puss/utils/constants/sizes.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';

import '../../../../common/styles/shadows.dart';
import '../../../../common/widgets/main_screens/notification_scroll_container.dart';
import '../../../../common/widgets/main_screens/primary_header.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MPrimaryHeader(
              child: Column(
                children: [
                  MHomeAppBar(),
                  SizedBox(height: Msizes.sxxs),
                  MNotificationsScrollBar(),
                  SizedBox(height: Msizes.xs),
                  MEarningStatsDisplay(),
                ],
              ),
            ),
            MMiningButton(),
            SizedBox(height: Msizes.md),
            Padding(
              padding: const EdgeInsets.all(Msizes.ssm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Extra Rewards \n',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(overflow: TextOverflow.ellipsis),
                    ),
                    TextSpan(
                      text: 'Claimable extra rewards await you',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ])),
                  SizedBox(height: Msizes.xs),
                  MEarnMoreCard(),
                  SizedBox(height: Msizes.xs),
                  Text(
                      'Ads help us serve you better - Thanks for your support ❤️',
                      style: Theme.of(context).textTheme.labelSmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2),
                ],
              ),
            ),
            SizedBox(height: Msizes.sm),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Msizes.md),
              child: Container(
                padding: EdgeInsets.all(Msizes.md),
                width: MHelperFunctions.screenWidth(),
                decoration: BoxDecoration(
                    color: MHelperFunctions.isDarkMode(context)
                        ? MColors.primary.withOpacity(0.4)
                        : MColors.light,
                    boxShadow: [MShadowStyle.verticalShadow],
                    borderRadius: BorderRadius.circular(Msizes.nm)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(MTexts.referMsg,
                          style: Theme.of(context).textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2),
                      SizedBox(height: Msizes.md),
                      MRoundedContainer(
                        radius: Msizes.xs,
                        bg: MHelperFunctions.isDarkMode(context)
                            ? Colors.deepPurple.withOpacity(0.6)
                            : Colors.deepPurple.withOpacity(0.3),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: Msizes.xxs, horizontal: Msizes.xs),
                          child: Text(MTexts.referLink,
                              style: Theme.of(context).textTheme.labelLarge,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2),
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(height: Msizes.lg),
            Container(height: 90),
          ],
        ),
      ),
    );
  }
}
