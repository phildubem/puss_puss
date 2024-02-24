import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class MTopScoreCard extends StatelessWidget {
  const MTopScoreCard({
    super.key,
    this.radius,
    this.img = MImages.avi,
    required this.height,
    required this.topText,
    required this.bottomText,
    required this.name,
    required this.position,
    required this.altName,
    required this.margin, this.topPad = 40,
  });

  final BorderRadiusGeometry? radius;
  final String img;
  final double height;
  final double margin;
  final double topPad;
  final String topText;
  final String bottomText;
  final String name;
  final String position;
  final String altName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: margin),
            padding: EdgeInsets.fromLTRB(20, topPad, 20, 10),
            decoration: BoxDecoration(
                color: MHelperFunctions.isDarkMode(context)
                    ? MColors.primary.withOpacity(0.9)
                    : MColors.primary.withOpacity(0.09),
                borderRadius: radius),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: '$name\n',
                    style: Theme.of(context).textTheme.labelSmall),
                TextSpan(
                    text: '$position \n',
                    style: Theme.of(context).textTheme.labelLarge),
                TextSpan(
                    text: '$altName \n',
                    style: Theme.of(context).textTheme.labelSmall!),
              ]),
            ),
          ),
          Positioned(
            top: -10,
            child: Text(
              topText,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: MColors.light, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 8,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: MHelperFunctions.isDarkMode(context)
                          ? MColors.grey.withOpacity(0.8)
                          : MColors.primary.withOpacity(0.4),
                      width: 2,
                    )),
                child: ClipOval(
                  child: Image(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 48,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: MHelperFunctions.isDarkMode(context)
                      ? MColors.grey
                      : MColors.primary.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  bottomText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelSmall!.apply(
                        color: MHelperFunctions.isDarkMode(context)
                            ? MColors.primary.withOpacity(0.9)
                            : MColors.light.withOpacity(0.9),
                        fontSizeFactor: 0.7,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
