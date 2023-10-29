import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/common/fade_in_animation/fade_in_design_model.dart';
import 'package:flutter_blog_app/src/constants/colors.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';
import 'package:flutter_blog_app/src/common/fade_in_animation/fade_in_controller.dart';
import 'package:get/get.dart';
import '../../../../common/fade_in_animation/fade_in_design.dart';

class SplashScreen extends StatelessWidget {
  
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final fadeInAnimationController = Get.put(FadeInAnimationController());
    fadeInAnimationController.startSplashScreenAnimation();
    var mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    
    return Scaffold(
      body: Stack(
        children: [
          BlogFadeInAnimation(
            durationInMs: 1600,
            animate: BlogAnimatePostition(
              topAfter: 0, topBefore: -30, leftBefore:-30, leftAfter: 0 
            ),
            child: const Image(image: AssetImage(blogSplashTopIcon)),
          ),
          BlogFadeInAnimation(
            durationInMs: 2000,
            animate: BlogAnimatePostition(
              topBefore: 80, topAfter: 80, leftAfter: blogDefaultSize, leftBefore: -80
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(blogAppName, style: Theme.of(context).textTheme.headline4), 
                Text(blogAppTagLine, style: Theme.of(context).textTheme.headline6)
              ],
            ),
          ),
          BlogFadeInAnimation(
            durationInMs: 2400,
            animate: BlogAnimatePostition(bottomBefore: 0, bottomAfter: 100),
            child: Image(image: const AssetImage(blogSplashImage), height: screenHeight * 0.5)
          ),
          BlogFadeInAnimation(
            durationInMs: 2400,
            animate: BlogAnimatePostition(bottomBefore: 0, bottomAfter: 60, rightBefore: blogDefaultSize, rightAfter: blogDefaultSize),
            child: Container(
                width: blogSplashContainerSize,
                height: blogSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: blogPrimaryColor
                ),
              )
            ),
        ],
      ),
    );
  }
}


