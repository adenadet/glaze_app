import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

//Internal Links
import 'package:glaze_credit_app/logic/models/onboarding.dart';
import 'package:glaze_credit_app/ui/widgets/onboarding_widget_page.dart';
import 'package:glaze_credit_app/constants/colors.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/texts.dart';

class OnBoardingController extends GetxController {
  final liquidController = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingPageWidget(
      model: OnBoardingModel(
        image: splashAdvert2,
        title: appOnBoardingTitle1,
        subTitle: appOnBoardingSubTitle1,
        counterText: appOnBoardingCounter1,
        bgColor: appOnBoardingPage1Color,
      ),
    ),
    OnboardingPageWidget(
      model: OnBoardingModel(
        image: splashAdvert3,
        title: appOnBoardingTitle2,
        subTitle: appOnBoardingSubTitle2,
        counterText: appOnBoardingCounter2,
        bgColor: appOnBoardingPage1Color,
      ),
    ),
    OnboardingPageWidget(
      model: OnBoardingModel(
        image: splashAdvert4,
        title: appOnBoardingTitle3,
        subTitle: appOnBoardingSubTitle3,
        counterText: appOnBoardingCounter3,
        bgColor: appOnBoardingPage1Color,
      ),
    ),
  ];

  onPageChangedCallBack(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  nextSlide() {
    int nextPage = liquidController.currentPage + 1;
    liquidController.animateToPage(page: nextPage);
  }

  skip() {
    liquidController.jumpToPage(page: pages.length - 1);
  }
}
