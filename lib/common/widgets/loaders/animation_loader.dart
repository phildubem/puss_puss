import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/constants/sizes.dart';

class MAnimationLoaderWidget extends StatelessWidget {
  const MAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          SizedBox(height: Msizes.nm),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Msizes.nm),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style: OutlinedButton.styleFrom(
                        backgroundColor: MColors.primary),
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: MColors.light),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
