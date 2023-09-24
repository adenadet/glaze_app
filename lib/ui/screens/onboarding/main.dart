import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:glaze_credit_app/logic/controllers/onboarding/onboarding_controller.dart';
import 'package:glaze_credit_app/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({
    super.key,
  });

  final liquidController = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController();

    return Scaffold(
        body: Stack(alignment: Alignment.center, children: [
      LiquidSwipe(
        liquidController: controller.liquidController,
        pages: controller.pages,
        slideIconWidget: const Icon(Icons.arrow_back_ios),
        enableSideReveal: true,
        onPageChangeCallback: controller.onPageChangedCallBack,
      ),
      Positioned(
        bottom: 30.0,
        child: OutlinedButton(
            onPressed: () {
              controller.nextSlide();
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              onPrimary: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: appDarkPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_forward_ios),
            )),
      ),
      Positioned(
        top: 50,
        right: 20,
        child: TextButton(
          onPressed: () {
            controller.skip();
          },
          child: const Text('Skip >>', style: TextStyle(color: Colors.black)),
        ),
      ),
      Obx(
        () => Positioned(
          bottom: 20,
          child: AnimatedSmoothIndicator(
            activeIndex: controller.currentPage.value,
            count: controller.pages.length,
            effect: const WormEffect(
                activeDotColor: appDarkPrimaryColor, dotHeight: 4.0),
          ),
        ),
      )
    ]));
  }
}
