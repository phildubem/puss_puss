import 'package:flutter/material.dart';
import 'package:puss_puss/common/styles/spacing_styles.dart';
import 'package:puss_puss/utils/constants/image_strings.dart';
import 'package:puss_puss/utils/constants/text_strings.dart';

import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.padding50pxTop,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(height: 120, image: AssetImage(MImages.logo)),
                  Text(MTexts.hi,
                      style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height: Msizes.xxs),
                  Text(MTexts.hi,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      
                    ),
                  ),
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
