
import 'package:flutter/material.dart';
import 'package:puss_puss/common/widgets/appbar/appbar.dart';

import '../../../../../common/widgets/main_screens/leading_appbar.dart';
import '../../../../../common/widgets/main_screens/notification_icon.dart';
import '../../../../../utils/device/device_utility.dart';

class MHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MHomeAppBar({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return MAppBar(
      title: MLeadingAppBarWidget(),
      actions: [MNotificationIcon(onPressed: () {},)],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}



