import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/common/fade_in_animation/fade_in_design_model.dart';
import 'package:flutter_blog_app/src/common/fade_in_animation/fade_in_controller.dart';
import 'package:get/get.dart';

class BlogFadeInAnimation extends StatelessWidget {
  BlogFadeInAnimation({
    super.key,
    required this.durationInMs, 
    this.animate,
    required this.child
  });

  //controller initilization
  final fadeInAnimationController = Get.put(FadeInAnimationController());
  final int durationInMs;
  final BlogAnimatePostition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx( 
      () => AnimatedPositioned(
        top: fadeInAnimationController.animate.value ? animate!.topAfter : animate!.topBefore,
        left: fadeInAnimationController.animate.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: fadeInAnimationController.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
        right: fadeInAnimationController.animate.value ? animate!.rightAfter : animate!.rightBefore,
        duration: Duration(milliseconds: durationInMs),
        child: AnimatedOpacity(
          opacity: fadeInAnimationController.animate.value ? 1: 0, 
          duration: Duration(milliseconds: durationInMs),
          
          child: child,
        ),
        
      ),
    );
  }
}