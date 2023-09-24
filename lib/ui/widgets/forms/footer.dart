import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
//import 'package:glaze_credit_app/constants/texts.dart';
import 'package:glaze_credit_app/ui/screens/auth/google_login.dart';

class FormFooterWidget extends StatelessWidget {
  const FormFooterWidget({super.key, required this.footerText});
  final String footerText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(googleLogo),
              height: buttonHeight,
            ),
            onPressed: () {
              Get.to(const GoogleLogin());
            },
            label: Text(footerText),
          ),
        ),
        const SizedBox(height: buttonHeight + 10),
      ],
    );
  }
}
