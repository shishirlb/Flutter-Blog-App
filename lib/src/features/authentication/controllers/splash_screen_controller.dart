import 'package:flutter_blog_app/src/features/authentication/screens/splash_screen/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{

	static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

	Future animateSplashScreen() async {
		await Future.delayed(const Duration(milliseconds: 500));
		animate.value = true;
		await Future.delayed(const Duration(milliseconds: 3000));
		Get.to(const WelcomeScreen());
  }  

}