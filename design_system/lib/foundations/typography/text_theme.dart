import 'package:flutter/material.dart';

extension AppTextThemeExtension on TextTheme {
  TextStyle get headline => AppTextTheme.headline;
  TextStyle get subTitle3 => AppTextTheme.subTitle3;
  TextStyle get subTitle2 => AppTextTheme.subTitle2;
  TextStyle get subTitle1 => AppTextTheme.subTitle1;
  TextStyle get caption2 => AppTextTheme.caption;
  TextStyle get body1 => AppTextTheme.body1;
  TextStyle get body2 => AppTextTheme.body2;
  TextStyle get body3 => AppTextTheme.body3;
}

class AppTextTheme {
  TextTheme makeTextTheme() {
    return const TextTheme();
  }

  static TextStyle headline = const TextStyle(
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subTitle3 = const TextStyle(
    fontSize: 10,
    height: 1.6,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subTitle2 = const TextStyle(
    fontSize: 12,
    height: 1.33,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subTitle1 = const TextStyle(
    fontSize: 14,
    height: 1.14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle caption = const TextStyle(
    fontSize: 8,
    height: 1.5,
    fontWeight: FontWeight.normal,
  );

  static TextStyle body3 = const TextStyle(
    fontSize: 10,
    height: 1.6,
    fontWeight: FontWeight.normal,
  );

  static TextStyle body2 = const TextStyle(
    fontSize: 12,
    height: 1.33,
    fontWeight: FontWeight.normal,
  );

  static TextStyle body1 = const TextStyle(
    fontSize: 14,
    height: 1.14,
    fontWeight: FontWeight.normal,
  );
}
