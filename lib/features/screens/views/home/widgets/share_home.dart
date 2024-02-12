import 'package:flutter/material.dart';
import 'package:puss_puss/common/widgets/main_screens/share_container.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class MShareHome extends StatelessWidget {
  const MShareHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MShareContainer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(MTexts.referMsg,
            style: Theme.of(context).textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
            maxLines: 2),
        SizedBox(height: Msizes.md),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: MHelperFunctions.isDarkMode(context)
                    ? Colors.deepPurple.withOpacity(0.6)
                    : MColors.primary.withOpacity(0.8),
                padding: EdgeInsets.symmetric(horizontal: Msizes.md),
                side: BorderSide.none),
            child: Text(
              MTexts.referLink,
              style: TextStyle(color: Colors.white),
            )),
      ]),
    );
  }
}
