import 'package:flutter/material.dart';
import 'package:puss_puss/common/styles/spacing_styles.dart';
import 'package:puss_puss/utils/constants/sizes.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../widgets/header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.padding40px10px,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    MSettingsHeader(),
                    SizedBox(height: Msizes.sm),
                    TextButton(
                      onPressed: () {},
                      child: Text(MTexts.changePP),
                    ),
                    SizedBox(height: Msizes.nm),
                    Divider(),
                    SizedBox(height: Msizes.sm),
                    Text('Profile Data')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
