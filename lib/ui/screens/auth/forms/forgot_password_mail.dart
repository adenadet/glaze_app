import 'package:flutter/material.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';
import 'package:glaze_credit_app/ui/screens/auth/forms/forgot_password/mail.dart';
import 'package:glaze_credit_app/ui/widgets/forms/header.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(defaultSize),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: defaultSize * 2,
            ),
            FormHeaderWidget(
              image: forgotPasswordImage,
              title: forgotPasswordText,
              subTitle: forgotPasswordSubText,
            ),
            ForgotPasswordMailForm(),
          ],
        ),
      ),
    );
  }
}
