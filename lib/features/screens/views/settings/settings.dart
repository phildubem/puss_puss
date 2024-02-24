import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:puss_puss/features/screens/views/settings/inner_pages/leaderboard.dart';
import 'package:puss_puss/features/screens/views/settings/inner_pages/terms.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:puss_puss/features/screens/views/settings/inner_pages/about_us.dart';
import 'package:puss_puss/features/screens/views/settings/inner_pages/faq.dart';
import 'package:puss_puss/features/screens/views/settings/widgets/head_section.dart';
import 'package:puss_puss/features/screens/views/settings/widgets/settings_tiles.dart';
import 'package:puss_puss/features/screens/views/settings/widgets/share.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MSettingsSectionHeader(),
            MSettingsShare(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: Msizes.sm, horizontal: Msizes.xs),
              child: Column(
                children: [
                  Divider(
                      color: dark ? MColors.grey : MColors.primary,
                      thickness: 0.2,
                      indent: 10,
                      endIndent: 20),
                  MSettingsTiles(
                    icon: Iconsax.tag_user,
                    title: 'About Us',
                    onTap: () => Get.to(() => AboutUsScreen()),
                  ),
                  MSettingsTiles(
                      icon: Iconsax.volume_high, title: 'Announcement'),
                  MSettingsTiles(
                    icon: Iconsax.ranking_1,
                    title: 'Leaderboard',
                    onTap: () => Get.to(() => LeaderboardScreen()),
                  ),
                  SizedBox(height: Msizes.nm),
                  Divider(
                      color: dark ? MColors.grey : MColors.primary,
                      thickness: 0.2,
                      indent: 10,
                      endIndent: 20),
                  MSettingsTiles(icon: Iconsax.translate, title: 'Language'),
                  MSettingsTiles(
                      icon: Iconsax.task_square,
                      title: 'FAQ',
                      onTap: () => Get.to(() => FaqScreen())),
                  MSettingsTiles(
                      icon: Iconsax.document_text, title: 'Privacy Policy'),
                  MSettingsTiles(
                    icon: Iconsax.document,
                    title: 'Terms of Service',
                    onTap: () => Get.to(() => TermsScreen()),
                  ),
                  SizedBox(height: Msizes.nm),
                  Divider(
                      color: dark ? MColors.grey : MColors.primary,
                      thickness: 0.2,
                      indent: 10,
                      endIndent: 20),
                  MSettingsTiles(
                    icon: Iconsax.global_search,
                    title: 'Website',
                    isTrailing: false,
                    trailing: Icon(Iconsax.export_3, size: 17),
                    onTap: () =>
                        launchUrl(Uri.parse('https://pusspusscoin.com')),
                  ),
                  MSettingsTiles(
                    icon: FontAwesomeIcons.xTwitter,
                    title: 'Twitter',
                    isTrailing: false,
                    trailing: Icon(Iconsax.export_3, size: 17),
                    onTap: () =>
                        launchUrl(Uri.parse('https://x.com/pusspusscoin?s=21')),
                  ),
                  MSettingsTiles(
                    icon: FontAwesomeIcons.telegram,
                    title: 'Telegram',
                    isTrailing: false,
                    trailing: Icon(Iconsax.export_3, size: 17),
                    onTap: () =>
                        launchUrl(Uri.parse('https://t.me/pusspusscoin')),
                  ),
                  MSettingsTiles(
                    icon: Iconsax.instagram,
                    title: 'Instagram',
                    isTrailing: false,
                    trailing: Icon(Iconsax.export_3, size: 17),
                    onTap: () => launchUrl(Uri.parse(
                        'https://instagram.com/pusspusscoin?utm_source=qr')),
                  ),
                  MSettingsTiles(
                    icon: FontAwesomeIcons.facebookF,
                    title: 'Facebook',
                    isTrailing: false,
                    trailing: Icon(Iconsax.export_3, size: 17),
                    onTap: () => launchUrl(Uri.parse(
                        'https://www.facebook.com/profile.php?id=61551625786711&mibextid=LQQJ4d')),
                  ),
                  SizedBox(height: Msizes.nm),
                  Divider(
                      color: dark ? MColors.grey : MColors.primary,
                      thickness: 0.2,
                      indent: 10,
                      endIndent: 20),
                  /*   
                  MSettingsTiles(
                    icon: Iconsax.mask_2,
                    title: 'Dark/Light Mode',
                    isTrailing: false,
                    trailing: ToggleButtons(
                      //Finish up this switch with state management
                      onPressed: (int index) {},
                      isSelected: [true, false],
                      borderRadius: BorderRadius.circular(5),
                      selectedColor: MColors.white,
                      fillColor: Colors.deepPurple[200],
                      color: dark ? MColors.white : MColors.primary,
                      constraints: BoxConstraints(
                        minHeight: 20,
                        minWidth: 40,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(Iconsax.moon, size: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(Iconsax.devices, size: 15),
                        ),
                      ],
                    ),
                  ),
                  */
                  MSettingsTiles(
                    icon: Iconsax.mask_2,
                    title: 'Dark/Light Mode',
                    isTrailing: false,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  MSettingsTiles(
                    icon: Iconsax.profile_delete,
                    title: 'Delete Account',
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
