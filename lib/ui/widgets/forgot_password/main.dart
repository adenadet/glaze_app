import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';
import 'package:glaze_credit_app/ui/screens/auth/forms/forgot_password_mail.dart';
import 'package:glaze_credit_app/ui/widgets/forgot_password/option.dart';

class ForgotPasswordWidget {
  static Future<dynamic> buildShowNodalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              forgotPasswordText,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              forgotPasswordSubTitleText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: defaultSize - 10),
            ForgotPasswordOptionWidget(
              iconImage: Icons.mail_outline_rounded,
              optionChoice: forgotPasswordChoiceEmail,
              optionFunction: () {
                Navigator.pop(context);
                Get.to(() => const ForgotPasswordMailScreen());
              },
              optionSummary: forgotPasswordChoiceEmailSubText,
            ),
            const SizedBox(height: defaultSize - 10),
            ForgotPasswordOptionWidget(
              iconImage: Icons.phone_android,
              optionChoice: forgotPasswordChoicePhone,
              optionFunction: () {
                Navigator.pop(context);
                Get.to(() => const ForgotPasswordMailScreen());
              },
              optionSummary: forgotPasswordChoicePhoneSubText,
            ),
          ],
        ),
      ),
    );
  }
}
