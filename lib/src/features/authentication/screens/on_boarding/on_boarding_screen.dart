import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/constants/colors.dart';
import 'package:flutter_blog_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final onBoardingController = OnBoardingController();
    
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onBoardingController.onBoardingPages,
            liquidController: onBoardingController.liquidController,
            onPageChangeCallback: onBoardingController.onPageChangedCallback,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () => onBoardingController.animateToNextSlide(), 
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: blogDarkColor, shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            )
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => onBoardingController.skipToLastPage(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey)),
            )
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: onBoardingController.currentPage.value,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}