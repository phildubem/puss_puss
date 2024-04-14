import 'package:flutter/material.dart';
import 'package:puss_puss/features/screens/views/settings/widgets/leaderboard_listview.dart';
import 'package:puss_puss/features/screens/views/settings/widgets/leaderboard_top_card.dart';
import 'package:puss_puss/utils/constants/image_strings.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class MleaderboardHeader extends StatelessWidget {
  const MleaderboardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Msizes.md),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MTopScoreCard(
                  height: MHelperFunctions.screenHeight() * 0.20,
                  topText: '',
                  bottomText: '2',
                  name: 'King David',
                  position: '2000',
                  altName: '@kingdavid',
                  margin: 45,
                  topPad: 30,
                  radius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                MTopScoreCard(
                  height: MHelperFunctions.screenHeight() * 0.22,
                  topText: '👑',
                  bottomText: '1',
                  name: 'Phil Dubem',
                  position: '2430',
                  altName: '@phildubem',
                  margin: 40,
                  topPad: 53,
                  radius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3)),
                ),
                MTopScoreCard(
                  topText: '',
                  bottomText: '3',
                  name: 'SMC DAO',
                  position: '1900',
                  altName: '@smcdao',
                  margin: 50,
                  topPad: 30,
                  height: MHelperFunctions.screenHeight() * 0.205,
                  radius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
              ],
            ),
            SizedBox(height: Msizes.xl),
            MLeaderBoardTiles(
                title: 'Phil Dubem', subTitle: '@PhilDubem', img: MImages.avi)
          ],
        ),
      ),
    );
  }
}
