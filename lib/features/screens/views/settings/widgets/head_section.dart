import 'package:flutter/material.dart';
import 'package:puss_puss/features/screens/views/settings/widgets/header.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/main_screens/primary_header.dart';
import '../../../../../utils/constants/sizes.dart';

class MSettingsSectionHeader extends StatelessWidget {
  const MSettingsSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MPrimaryHeader(
      child: Column(
        children: [
          MAppBar(
            actions: [
              TextButton(onPressed: () {}, child: Text('Edit'))
            ],
          ),
          MSettingsHeader(),
          SizedBox(height: Msizes.sm),
          Text(
            'Phil Dubem',
            style: Theme.of(context).textTheme.headlineSmall!,
          ),
          Text(
            'phildubem@gmail.com',
            style: Theme.of(context).textTheme.labelMedium!,
          ),
          SizedBox(height: Msizes.xxl),
        ],
      ),
    );
  }
}
