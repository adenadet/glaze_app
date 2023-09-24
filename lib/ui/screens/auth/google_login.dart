import 'package:flutter/material.dart';
import 'package:glaze_credit_app/constants/images.dart';
import 'package:glaze_credit_app/ui/widgets/forms/header.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Login'),
      ),
      body: const Column(
        children: [
          const FormHeaderWidget(
              image: errorComingSoon,
              title: "Coming Soon",
              subTitle: "We are working on this"),
        ],
      ),
    );
  }
}
