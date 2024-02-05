import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_action/slide_action.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../utils/helpers/helper_function.dart';

class MMiningButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: SlideAction(
        trackBuilder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: dark ? Colors.deepPurple[200] :Colors.deepPurple.withOpacity(0.31),
             
            ),
            child: Center(
              child: Text(
                state.isPerformingAction ? '${MTexts.mining} ...' : MTexts.slide,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20, color: dark ? MColors.primary : MColors.light),
              ),
            ),
          );
        },
        thumbBuilder: (context, state) {
          return Container(
            margin: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: dark ? MColors.primary : Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Center(
              child: state.isPerformingAction
                  ? const CupertinoActivityIndicator(
                      color: Colors.white,
                    )
                  : const Icon(Iconsax.sidebar_right, color: MColors.white),
            ),
          );
        },
        action: () async {
          // Add Code for mining after 24 hours here
          await Future.delayed(
            const Duration(seconds: 5),
            () => debugPrint("I am Phil"),
          );
        },
      ),
    );
  }
}
