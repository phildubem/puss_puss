import 'package:flutter/material.dart';
import 'package:puss_puss/features/screens/views/home/widgets/earn_more_cards.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MExtraRewardsSection extends StatelessWidget {
  const MExtraRewardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Msizes.ssm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '${MTexts.extraRewards} \n',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(overflow: TextOverflow.ellipsis),
            ),
            TextSpan(
              text: '${MTexts.claimable} ',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(overflow: TextOverflow.ellipsis),
            ),
          ])),
          SizedBox(height: Msizes.xs),
          MEarnMoreCard(),
          SizedBox(height: Msizes.xs),
          Text(MTexts.adsHelp,
              style: Theme.of(context).textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 2),
        ],
      ),
    );
  }
}