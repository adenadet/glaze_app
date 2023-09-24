import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';
//import 'package:glaze_credit_app/ui/screens/auth/forgot_password.dart';
import 'package:glaze_credit_app/ui/screens/dashboard.dart';
import 'package:glaze_credit_app/ui/widgets/forgot_password/main.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: loginFormLblUser,
                hintText: loginFormLblUser,
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key),
                label: Text(loginFormLblPassword),
                hintText: loginFormLblPassword,
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgotPasswordWidget.buildShowNodalBottomSheet(context);
                },
                child: const Text(loginLblForgotPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const DashboardScreen());
                },
                child: Text(loginText.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
