import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class BlogElevatedButtonTheme {
  BlogElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: blogWhiteColor,
      backgroundColor: blogDarkColor,
      side: const BorderSide(color: blogDarkColor),
      padding: const EdgeInsets.symmetric(vertical: blogButtonHeight)
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: blogSecondaryColor,
      backgroundColor: blogWhiteColor,
      side: const BorderSide(color: blogSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: blogButtonHeight)
    ),
  );
}
