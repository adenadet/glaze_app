import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';
import 'package:glaze_credit_app/ui/screens/dashboard.dart';

class ForgotPasswordMailForm extends StatelessWidget {
  const ForgotPasswordMailForm({super.key});

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
                prefixIcon: Icon(Icons.mail),
                labelText: forgotPasswordChoiceEmail,
                hintText: forgotPasswordChoiceEmail,
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
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
