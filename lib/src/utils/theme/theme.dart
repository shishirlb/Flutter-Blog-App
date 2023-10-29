import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:flutter_blog_app/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:flutter_blog_app/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:flutter_blog_app/src/utils/theme/widget_themes/text_theme.dart';

class BlogAppTheme {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: BlogAppTextTheme.lightTextTheme,
    outlinedButtonTheme: BlogOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: BlogElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: BlogTextFieldTheme.lightInputDecorationTheme
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: BlogAppTextTheme.darkTextTheme,
    outlinedButtonTheme: BlogOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: BlogElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: BlogTextFieldTheme.darkInputDecorationTheme
  );
}