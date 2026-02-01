import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool loading;
  final bool enabled;
  final double? width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final double radius;
  final Widget? icon;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.loading = false,
    this.enabled = true,
    this.width,
    this.height = 48,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = Colors.white,
    this.radius = 10,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final isDisabled = !enabled || loading;

    return SizedBox(
      width: width?.w,
      height: height.h,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: backgroundColor.withOpacity(.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius.r),
          ),
          elevation: 0,
        ),
        child: loading
            ? SizedBox(
          width: 22.w,
          height: 22.w,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: textColor,
          ),
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              icon!,
              SizedBox(width: 8.w),
            ],
            Text(
              text,
              style: TextStyle(
                fontSize: 50.sp,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
