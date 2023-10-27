import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class BlogOutlinedButtonTheme {
  BlogOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: blogSecondaryColor,
      side: BorderSide(color: blogSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: blogButtonHeight)
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: blogWhiteColor,
      side: BorderSide(color: blogWhiteColor),
      padding: EdgeInsets.symmetric(vertical: blogButtonHeight)
    ),
  );
}
