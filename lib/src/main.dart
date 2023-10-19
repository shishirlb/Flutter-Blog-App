import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter_blog_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //set theme of the app
      theme: BlogAppTheme.lightTheme,
      darkTheme: BlogAppTheme.darkTheme,
      home: SplashScreen(),
    );
  }
}
