import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    //final dark = MHelperFunctions.isDarkMode(context);

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
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              destinations: [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Iconsax.wallet_2), label: 'Wallet'),
                NavigationDestination(
                    icon: Icon(Iconsax.setting), label: 'Settings'),
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
    Container(color: Colors.amber),
    Container(color: Colors.green),
    Container(color: Colors.grey),
  ];
}
