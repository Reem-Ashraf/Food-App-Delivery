import 'package:flutter/material.dart';

/// Context-aware text styles that use theme colors
class ThemeTextStyles {
  static String poppinsFamilyName = "Poppins";

  // Regular text styles that adapt to theme
  static TextStyle regular11(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 11.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular12(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regularGrey12(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular13(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 13.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular14(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular15(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular16(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular16Grey(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular14Grey(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular18(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  static TextStyle regular20(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  // Medium text styles
  static TextStyle medium12(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    height: 1.0,
  );

  static TextStyle medium14(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    height: 1.0,
  );

  static TextStyle medium16(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    height: 1.0,
  );

  static TextStyle medium18(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    height: 1.0,
  );

  // Bold text styles
  static TextStyle bold14(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
    height: 1.0,
  );

  static TextStyle bold16(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    height: 1.0,
  );

  static TextStyle bold18(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    height: 1.0,
  );

  static TextStyle bold20(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    height: 1.0,
  );

  // Primary colored text styles
  static TextStyle primary14(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.primary,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    height: 1.0,
  );

  static TextStyle primary16(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.primary,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    height: 1.0,
  );
}

