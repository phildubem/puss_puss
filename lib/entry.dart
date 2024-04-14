import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puss_puss/bindings/general_bindings.dart';
import 'package:puss_puss/utils/constants/colors.dart';
import 'package:puss_puss/utils/helpers/helper_function.dart';
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
        initialBinding: GeneralBindings(),
        title: 'Puss Puss',
        home: Scaffold(
            body: Center(
          child: CupertinoActivityIndicator(
            color: MHelperFunctions.isDarkMode(context)
                ? MColors.white
                : MColors.primary,
          ),
        )));
  }
}
