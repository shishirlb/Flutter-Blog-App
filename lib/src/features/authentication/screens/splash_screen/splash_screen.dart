import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/colors.dart';
import 'package:flutter_blog_app/src/constants/image_strings.dart';
import 'package:flutter_blog_app/src/constants/sizes.dart';
import 'package:flutter_blog_app/src/constants/text_strings.dart';
import 'package:flutter_blog_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  
  SplashScreen({super.key});

  //controller initilization
  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.animateSplashScreen();
    return Scaffold(
      body: Stack(
        children: [
          Obx( () => AnimatedPositioned(
              top: splashScreenController.animate.value ? 0 : -20,
              left: splashScreenController.animate.value ? 0 : -20,
              duration: const Duration(milliseconds: 1600),
              child: const Image(
                image: AssetImage(blogSplashTopIcon)
              )
            ),
          ),
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 100, 
              left: splashScreenController.animate.value ? blogDefaultSize : -80, 
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(blogAppName, style: Theme.of(context).textTheme.headline4), 
                    Text(blogAppTagLine, style: Theme.of(context).textTheme.headline6)
                  ],
                ),
              )
            ),
          ),
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashScreenController.animate.value ? 100 : 0,
              right: 10,
              left: 10,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage(blogSplashImage))
              )
            ),
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
}
