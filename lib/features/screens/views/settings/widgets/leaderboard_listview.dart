import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';

import '../../../../../utils/constants/colors.dart';

class MLeaderBoardTiles extends StatelessWidget {
  const MLeaderBoardTiles({
    super.key,
    required this.title,
    this.isTrailing = true,
    this.trailing,
    required this.img,
    required this.subTitle,
    this.up = true,
  });

  final String title;
  final String subTitle;
  final String img;
  final bool isTrailing;
  final bool up;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          return Column(
            children: [
              ListTile(
                leading: ClipOval(
                  child: Image(
                    height: 45,
                    width: 45,
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
                title:
                    Text(title, style: Theme.of(context).textTheme.labelLarge),
                subtitle: Text(subTitle,
                    style: Theme.of(context).textTheme.labelSmall),
                trailing: isTrailing
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('1124',
                              style: Theme.of(context).textTheme.bodyMedium),
                          up
                              ? Icon(
                                  Iconsax.arrow_up,
                                  size: 13,
                                  color: MColors.success,
                                )
                              : Icon(
                                  Iconsax.arrow_bottom,
                                  size: 13,
                                  color: MColors.error,
                                ),
                        ],
                      )
                    : trailing,
              ),
              Divider(
                  color: MHelperFunctions.isDarkMode(context)
                      ? MColors.grey
                      : MColors.primary,
                  thickness: 0.2,
                  indent: 10,
                  endIndent: 20),
            ],
          );
        });
  }
}
