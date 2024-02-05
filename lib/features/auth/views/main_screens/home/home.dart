import 'package:flutter/material.dart';
import 'package:puss_puss/common/widgets/main_screens/mine_button.dart';
import 'package:puss_puss/features/auth/views/main_screens/home/widgets/home_appbar.dart';
import 'package:puss_puss/utils/constants/sizes.dart';

import '../../../../../common/widgets/main_screens/notification_scroll_container.dart';
import '../../../../../common/widgets/main_screens/primary_header.dart';
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
                  SizedBox(height: Msizes.sxxs),
                  MNotificationsScrollBar(),
                  SizedBox(height: Msizes.sxxs),
                  
                ],
              ),
            ),
            
            MMiningButton()
          ],
        ),
      ),
    );
  }
}
