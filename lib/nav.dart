import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/features/screens/views/home/home.dart';
import 'package:puss_puss/pages/home.dart';
import 'package:puss_puss/pages/settings.dart';
import 'package:puss_puss/utils/constants/colors.dart';

import 'utils/helpers/helper_function.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    final dark = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
        () => Container(
          height: 80,
          margin: EdgeInsets.fromLTRB(25, 5, 25, 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: NavigationBar(
              elevation: 0,
              backgroundColor: dark
                  ? MColors.primary.withOpacity(0.97)
                  : MColors.white.withOpacity(0.97),
              indicatorColor: dark
                  ? MColors.white.withOpacity(0.12)
                  : MColors.primary.withOpacity(0.12),
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              destinations: [
                NavigationDestination(
                    icon: Icon(Iconsax.home_2),
                    label: 'Home',
                    selectedIcon: Icon(Iconsax.home_hashtag)),
                NavigationDestination(
                    icon: Icon(Iconsax.wallet_2),
                    label: 'Wallet',
                    selectedIcon: Icon(Iconsax.empty_wallet)),
                NavigationDestination(
                    icon: Icon(Iconsax.setting),
                    label: 'Settings',
                    selectedIcon: Icon(Iconsax.setting_2)),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    SettingsPage(),
    HomePage()
  ];
}
