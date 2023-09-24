import 'package:flutter/material.dart';

class ForgotPasswordOptionWidget extends StatelessWidget {
  const ForgotPasswordOptionWidget({
    super.key,
    required this.iconImage,
    required this.optionChoice,
    required this.optionSummary,
    this.optionFunction,
    this.textAlign = TextAlign.center,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final IconData iconImage;
  final String optionChoice;
  final String optionSummary;
  final VoidCallback? optionFunction;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: optionFunction,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(
              iconImage,
              size: 60,
            ),
            Column(
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Text(
                  optionChoice,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  optionSummary,
                  textAlign: textAlign,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
