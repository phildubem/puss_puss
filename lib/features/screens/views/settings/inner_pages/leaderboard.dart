import 'package:flutter/material.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/appbar/primary_color_appbar.dart';
import '../../../../../common/widgets/appbar/tabbar.dart';
import '../../../../../common/widgets/custom_shapes/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../widgets/leaderboard_hearder.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MColoredAppBar(
          showBackArrow: true,
          title: Text('Leaderboard'),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, isInnerBoxScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: MHelperFunctions.isDarkMode(context)
                        ? MColors.primary.withOpacity(0.2)
                        : Colors.deepPurple[200],
                    expandedHeight: MHelperFunctions.screenHeight() * 0.1,
                    flexibleSpace: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      children: [
                        SizedBox(
                          height: MHelperFunctions.screenHeight() * 0.1,
                          child: Stack(
                            children: [
                              Positioned(
                                  top: -190,
                                  right: -210,
                                  child: MCircularContainer(
                                      bg: MColors.light.withOpacity(0.1))),
                              Positioned(
                                  top: 10,
                                  right: -300,
                                  child: MCircularContainer(
                                      bg: MColors.light.withOpacity(0.1))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    bottom: MTabBar(
                      tabs: [
                        Tab(child: Text('Miners Ranking')),
                        Tab(child: Text('Referrals Ranking')),
                      ],
                    )),
              ];
            },
            body: TabBarView(
              children: [
                MleaderboardHeader(),
                MleaderboardHeader(),
              ],
            )),
      ),
    );
  }
}
