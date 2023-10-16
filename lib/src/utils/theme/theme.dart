import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/utils/theme/widget_themes/text_theme.dart';

class BlogAppTheme {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: BlogAppTextTheme.lightTextTheme
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: BlogAppTextTheme.darkTextTheme
  );
}