import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/shadows.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/main_screens/primary_header.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          MPrimaryHeader(
            child: Column(
              children: [
                MAppBar(
                  showCenterTile: false,
                  title: Text('Wallet'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Msizes.nm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MHelperFunctions.screenWidth(),
                        padding: EdgeInsets.symmetric(vertical: 6),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: MColors.light.withOpacity(0.5)),
                          boxShadow: [MShadowStyle.verticalShadow],
                          borderRadius: BorderRadius.circular(Msizes.md),
                          color: MHelperFunctions.isDarkMode(context)
                              ? MColors.primary.withOpacity(0.6)
                              : MColors.light.withOpacity(0.2),
                        ),
                        child: Text(
                          MTexts.witdrawalUnavailable,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: Msizes.md),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '${MTexts.availableBal} \n',
                                style: Theme.of(context).textTheme.labelMedium),
                            TextSpan(
                                text: '2,500 ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                        foreground: Paint()
                                          ..shader = LinearGradient(
                                            colors: <Color>[
                                              Color(0xff6366F1),
                                              Color(0xffFB31FF)
                                              //add more color here.
                                            ],
                                          ).createShader(Rect.fromLTWH(
                                              0.0, 0.0, 200.0, 100.0)))),
                            TextSpan(
                                text: '${MTexts.appAlt.toUpperCase()} \n',
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                          ])),
                          Padding(
                            padding: const EdgeInsets.only(bottom: Msizes.xxl),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        MHelperFunctions.isDarkMode(context)
                                            ? Colors.deepPurple.withOpacity(0.6)
                                            : MColors.primary.withOpacity(0.8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: Msizes.md),
                                    side: BorderSide.none),
                                child: Text(
                                  MTexts.withdraw,
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Msizes.xs),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Msizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MTexts.withdrawHistory,
                  style: Theme.of(context).textTheme.titleSmall!,
                ),
                Center(
                  heightFactor: 5,
                  child: Column(
                    children: [
                      Icon(Iconsax.direct_send,
                          size: 40,
                          color: MHelperFunctions.isDarkMode(context)
                              ? MColors.white
                              : MColors.primary),
                      SizedBox(height: Msizes.xs),
                      Text(MTexts.withdrawalMsg,
                          style: Theme.of(context).textTheme.labelMedium!),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
