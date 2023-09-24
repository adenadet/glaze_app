import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/colors.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/network.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';

import 'package:glaze_credit_app/logic/controllers/authentication/splash_screen_controller.dart';

class SplashStaticScreen extends StatelessWidget {
  SplashStaticScreen({super.key});
  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    splashScreenController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashScreenController.animated.value ? 0 : 50,
                left: splashScreenController.animated.value ? 0 : 50,
                child: const Image(image: AssetImage(splashTopIcon)),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashScreenController.animated.value ? 0 : -50,
                left: splashScreenController.animated.value
                    ? defaultSize * 1.5
                    : -50,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appName,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Roboto-Bold',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      appTagLine,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto-Thin',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: splashScreenController.animated.value ? 80 : -500,
                child: AnimatedOpacity(
                  opacity: splashScreenController.animated.value ? 1 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: Image(
                      image: const AssetImage(splashAdvert1),
                      height: size.height * 0.8,
                      width: size.width),
                ),
              ),
            ),
            const Positioned(
              right: 60,
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
