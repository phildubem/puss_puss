import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class MSocialButton extends StatelessWidget {
  const MSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: Msizes.snm,
              height: Msizes.snm,
              image: AssetImage(MImages.google),
            ),
          ),
        ),
        SizedBox(width: Msizes.sm),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: Msizes.snm,
              height: Msizes.snm,
              image: AssetImage(MImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
