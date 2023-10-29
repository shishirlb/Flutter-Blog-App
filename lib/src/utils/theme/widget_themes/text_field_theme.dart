import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/colors.dart';

class BlogTextFieldTheme {
  BlogTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: blogSecondaryColor,
    floatingLabelStyle: TextStyle(color: blogSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: blogSecondaryColor
      )
    )
  );

  static InputDecorationTheme darkInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: blogPrimaryColor,
    floatingLabelStyle: TextStyle(color: blogPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: blogPrimaryColor
      )
    )
  );
}