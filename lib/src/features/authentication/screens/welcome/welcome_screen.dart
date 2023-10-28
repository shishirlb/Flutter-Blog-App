import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/common/fade_in_animation/fade_in_controller.dart';
import 'package:flutter_blog_app/src/common/fade_in_animation/fade_in_design.dart';
import 'package:flutter_blog_app/src/common/fade_in_animation/fade_in_design_model.dart';
import 'package:flutter_blog_app/src/constants/colors.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';
import 'package:flutter_blog_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final fadeInAnimationcontroller = Get.put(FadeInAnimationController());
    fadeInAnimationcontroller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenBrightness = mediaQuery.platformBrightness;
    final isDarkMode = screenBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? blogSecondaryColor : blogPrimaryColor,
      body: Stack(
        children: [
          BlogFadeInAnimation(
            durationInMs: 1200,
            animate: BlogAnimatePostition(
              bottomAfter: 0, 
              bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
              rightBefore: 0,
              rightAfter: 0,
              topBefore: 0,
              topAfter: 0
            ),
            child: Container(
              padding: const EdgeInsets.all(blogDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: const AssetImage(blogWelcomePageImg), height: screenHeight * 0.6),
                  Column(
                    children: [
                      Text(blogWelcomeScreenTitle, style: Theme.of(context).textTheme.headline5),
                      Text(blogWelcomeScreenSubTitle, style: Theme.of(context).textTheme.bodyText2, textAlign: TextAlign.center,),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          child: Text(
                            blogLogin.toUpperCase()
                          )
                        )
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {}, 
                          child: Text(
                            blogRegister.toUpperCase()
                            )
                          )
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}