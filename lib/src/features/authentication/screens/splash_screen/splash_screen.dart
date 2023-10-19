// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/colors.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/splash_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate = false;

  @override
  void initState() {
    super.initState();
    animateSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            top: animate ? 0 : -20,
            left: animate ? 0 : -20,
            duration: const Duration(milliseconds: 1600),
            child: Image(
              image: AssetImage(blogSplashTopIcon)
            )
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: 100, 
            left: animate ? blogDefaultSize : -80, 
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: animate ? 1 : 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(blogAppName, style: Theme.of(context).textTheme.headline4), 
                  Text(blogAppTagLine, style: Theme.of(context).textTheme.headline6)
                ],
              ),
            )
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: animate ? 100 : 0,
            right: 10,
            left: 10,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: animate ? 1 : 0,
              child: Image(image: AssetImage(blogSplashImage))
            )
          ),
          Positioned(
            bottom: 40,
            right: blogDefaultSize,
            child: Container(
              width: blogSplashContainerSize,
              height: blogSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: blogPrimaryColor
              ),
            )
          )
        ],
      ),
    );
  }
  
  Future animateSplashScreen() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() =>animate = true);
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
