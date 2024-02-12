import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_function.dart';

class MSettingsTiles extends StatelessWidget {
  const MSettingsTiles({
    super.key,
    required this.icon,
    required this.title,
    this.isTrailing = true,
    this.onTap, this.trailing,
  });

  final IconData icon;
  final String title;
  final bool isTrailing;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return ListTile(
      leading:
          Icon(icon, size: 18, color: dark ? MColors.white : MColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.labelLarge),
      trailing: isTrailing
          ? Icon(Iconsax.arrow_right_3, size: 18) : trailing, 
      onTap: onTap,
    );
  }
}
