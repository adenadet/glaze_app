import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:glaze_credit_app/constants/sizes.dart';
import 'package:glaze_credit_app/constants/texts.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

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
                label: Text(registerFormLblFirstName),
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                label: Text(registerFormLblLastName),
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.help_center_outlined),
                label: Text(registerFormLblBVN),
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                label: Text(registerFormLblPhone),
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail),
                label: Text(registerFormLblUser),
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key),
                label: Text(registerFormLblPassword),
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key),
                label: Text(registerFormLblConfirmPassword),
              ),
            ),
            const SizedBox(
              height: formHeightValue - 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(registerText.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
