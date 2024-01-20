import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puss_puss/features/auth/views/onboarding/onboarding.dart';
import 'package:puss_puss/utils/theme/theme.dart';

class PussApp extends StatelessWidget {
  const PussApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MAppTheme.lightTheme,
        darkTheme: MAppTheme.darkTheme,
        title: 'Puss Puss',
        home: const OnBoardingscreen());
  }
}