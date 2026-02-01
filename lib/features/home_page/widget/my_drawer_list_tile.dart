import 'package:flutter/material.dart';
import 'package:food_app/core/theme/app_colors.dart';

class MyDrawerListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final bool isSwitch;
  final bool? switchValue;
  final ValueChanged<bool>? onSwitchChanged;

  const MyDrawerListTile({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.isSwitch = false,
    this.switchValue,
    this.onSwitchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryColor),
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.darkBrown,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: isSwitch
          ? Switch(
        activeThumbColor: AppColors.primaryColor,
              activeColor: AppColors.primaryColor,
          value: switchValue ?? false, onChanged: onSwitchChanged)
          : null,
      onTap: isSwitch ? null : onTap,
    );
  }
}
