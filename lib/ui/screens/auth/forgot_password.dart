import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/colors.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/texts.dart';
import 'package:glaze_credit_app/ui/screens/auth/forms/login.dart';
import 'package:glaze_credit_app/ui/widgets/forms/footer.dart';
import 'package:glaze_credit_app/ui/widgets/forms/header.dart';
import 'package:glaze_credit_app/ui/screens/auth/register.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                  title: forgotPasswordText,
                  subTitle: forgotPasswordSubTitleText,
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
