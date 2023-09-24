import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/logic/controllers/onboarding/onboarding_controller.dart';
import 'package:glaze_credit_app/logic/models/onboarding.dart';
import 'package:glaze_credit_app/constants/colors.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/texts.dart';
import 'package:glaze_credit_app/ui/screens/auth/forms/login.dart';
import 'package:glaze_credit_app/ui/widgets/forms/footer.dart';
import 'package:glaze_credit_app/ui/widgets/forms/header.dart';
import 'package:glaze_credit_app/ui/widgets/onboarding_widget_page.dart';
import 'package:glaze_credit_app/ui/screens/auth/forgot_password.dart';
import 'package:glaze_credit_app/ui/screens/auth/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;

    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: appWhiteColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const FormHeaderWidget(
                  image: welcomeScreenImage,
                  title: loginTitleText,
                  subTitle: loginSubTitleText,
                ),
                const LoginForm(),
                const SizedBox(
                  height: buttonHeight,
                ),
                const FormFooterWidget(footerText: loginWithGoogle),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const RegisterScreen());
                  },
                  child: Text.rich(
                    TextSpan(
                      text: textToRegister,
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: const [
                        TextSpan(
                          text: " Sign Up",
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: buttonHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
