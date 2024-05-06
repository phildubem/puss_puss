import 'package:flutter/material.dart';
import 'package:puss_puss/features/screens/views/home/widgets/earning_display.dart';
import 'package:puss_puss/features/screens/views/home/widgets/extra_reward.dart';
import 'package:puss_puss/features/screens/views/home/widgets/mine_button.dart';
import 'package:puss_puss/features/screens/views/home/widgets/home_appbar.dart';
import 'package:puss_puss/features/screens/views/home/widgets/share_home.dart';
import 'package:puss_puss/utils/constants/sizes.dart';

import '../../../../common/widgets/main_screens/notification_scroll_container.dart';
import '../../../../common/widgets/main_screens/primary_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: MHomeAppBar(),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MPrimaryHeader(
              child: Column(
                children: [
                  MHomeAppBar(),
                  SizedBox(height: Msizes.sxxs),
                  MNotificationsScrollBar(),
                  SizedBox(height: Msizes.xs),
                  MEarningStatsDisplay(),
                  SizedBox(height: Msizes.xxl),
                ],
              ),
            ),
            MMiningButton(),
            SizedBox(height: Msizes.md),
            MExtraRewardsSection(),
            SizedBox(height: Msizes.sm),
            MShareHome(),
            SizedBox(height: Msizes.lg),
            Container(height: 90),
          ],
        ),
      ),
    );
  }
}




