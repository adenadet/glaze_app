import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/colors.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';
import 'package:glaze_credit_app/ui/screens/auth/login.dart';
import 'package:glaze_credit_app/ui/screens/auth/register.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;

    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? appDarkPrimaryColor : appPrimaryColor,
      body: Container(
        color: appWhiteColor,
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage(welcomeScreenImage),
              height: size.height * 0.5,
              width: size.width,
            ),
            Column(children: [
              Text(welcomeTitle,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center),
              Text(welcomeSubTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
            ]),
            Row(children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  child: Text(
                    loginText.toUpperCase(),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => RegisterScreen());
                  },
                  child: Text(registerText.toUpperCase()),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
