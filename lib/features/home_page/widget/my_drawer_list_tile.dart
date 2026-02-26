import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary, size: 65.sp), // 18 * 3.636 ≈ 65
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w500,
          fontSize: 58.sp, // 16 * 3.636 ≈ 58
        ),
      ),
      trailing: isSwitch
          ? Switch(
              inactiveThumbColor: Theme.of(context).colorScheme.primary,
              activeThumbColor: Theme.of(context).colorScheme.primary,
              inactiveTrackColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
              value: switchValue ?? false,
              onChanged: onSwitchChanged,
            )
          : null,
      onTap: isSwitch ? null : onTap,
    );
  }
}
