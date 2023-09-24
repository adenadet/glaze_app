import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/colors.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';
import 'package:glaze_credit_app/ui/screens/auth/forms/register.dart';
import 'package:glaze_credit_app/ui/widgets/forms/footer.dart';
import 'package:glaze_credit_app/ui/screens/auth/login.dart';
import 'package:glaze_credit_app/ui/widgets/forms/header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    //var brightness = Brightness.dark;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: appWhiteColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const FormHeaderWidget(
                    image: welcomeScreenImage,
                    title: registerTitleText,
                    subTitle: registerSubTitleText),
                const RegisterForm(),
                const SizedBox(height: buttonHeight),
                const FormFooterWidget(footerText: registerWithGoogle),
                const SizedBox(height: buttonHeight),
                TextButton(
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                  child: Text.rich(
                    TextSpan(
                      text: textToLogin,
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: const [
                        TextSpan(
                          text: " Login",
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
