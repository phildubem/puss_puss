import 'package:flutter/material.dart';

import '../../../../../common/widgets/main_screens/arc_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MEarningStatsDisplay extends StatelessWidget {
  const MEarningStatsDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Msizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MArcContainer(),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        children: [
                      TextSpan(
                          text: '${MTexts.earning} \n',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium),
                      TextSpan(
                          text: '0.027 ',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  foreground: Paint()
                                    ..shader = LinearGradient(
                                      colors: <Color>[
                                        Color(0xff6366F1),
                                        Color(0xffFB31FF)
                                        //add more color here.
                                      ],
                                    ).createShader(Rect.fromLTWH(
                                        0.0,
                                        0.0,
                                        200.0,
                                        100.0)))),
                      TextSpan(
                          text: 'PUSS',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall),
                    ])),
                RichText(
                    text: TextSpan(
                        children: [
                      TextSpan(
                          text: '${MTexts.totalBal} \n',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium),
                      TextSpan(
                          text: '2,500 ',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  foreground: Paint()
                                    ..shader = LinearGradient(
                                      colors: <Color>[
                                        Color(0xff6366F1),
                                        Color(0xffFB31FF)
                                        //add more color here.
                                      ],
                                    ).createShader(Rect.fromLTWH(
                                        0.0,
                                        0.0,
                                        200.0,
                                        100.0)))),
                      TextSpan(
                          text: 'PUSS',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall),
                    ])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}