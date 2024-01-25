import 'package:flutter/material.dart';
import 'package:puss_puss/features/auth/views/main_screens/home/widgets/home_appbar.dart';
import 'package:puss_puss/utils/constants/sizes.dart';

import '../../../../../common/widgets/main_screens/notification_scroll_container.dart';
import '../../../../../common/widgets/main_screens/primary_header.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';
//import '../../../../../utils/helpers/helper_function.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MPrimaryHeader(
              child: Column(
                children: [
                  MHomeAppBar(),
                  SizedBox(height: Msizes.smd),
                  MNotificationsScrollBar(),
                  SizedBox(height: Msizes.smd),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
