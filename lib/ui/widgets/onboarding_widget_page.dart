import 'package:flutter/material.dart';
import 'package:glaze_credit_app/constants/colors.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/logic/models/onboarding.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({super.key, required this.model});
  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: model.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage(appLogo), height: size.height * 0.15),
            Image(
              image: AssetImage(model.image),
              height: size.height * 0.5,
              width: size.width,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    model.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Roboto-Bold',
                      color: appPrimaryColor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Text(
                    model.subTitle,
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                      color: appBlackColor,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                model.counterText,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  color: appPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ));
  }
}
