import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final liquidController = LiquidController();
  RxInt currentPage = 0.obs;

  final onBoardingPages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: blogOnBoardingPage1Img,
          title: blogOnBoardingTitle1, 
          subTitle: blogOnBoardingSubTitle1,
          counterText: blogOnboardingCounter1,
          bgColor: blogOnBoardingPage1Color
        )
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: blogOnBoardingPage2Img,
          title: blogOnBoardingTitle2, 
          subTitle: blogOnBoardingSubTitle2,
          counterText: blogOnboardingCounter2,
          bgColor: blogOnBoardingPage2Color
        )
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: blogOnBoardingPage3Img,
          title: blogOnBoardingTitle3, 
          subTitle: blogOnBoardingSubTitle3,
          counterText: blogOnboardingCounter3,
          bgColor: blogOnBoardingPage3Color
        )
      )
    ];

  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;

  skipToLastPage() => liquidController.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = liquidController.currentPage + 1;
    liquidController.animateToPage(page: nextPage);
  }
  
}