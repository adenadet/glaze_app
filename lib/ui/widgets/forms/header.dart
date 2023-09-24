import 'package:flutter/material.dart';
import 'package:glaze_credit_app/constants/images.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.imageColor,
    this.heightBetween,
    this.imageHeight,
    this.textAlign,
  });

  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final Color? imageColor;
  final double? heightBetween, imageHeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Column(children: [
      Align(
        alignment: Alignment.topRight,
        child: Image(
          image: const AssetImage(appLogo),
          height: size.height * 0.05,
        ),
      ),
      Image(
        image: AssetImage(image),
        height: size.height * 0.25,
        width: size.width * 0.5,
      ),
      Text(
        title,
        style: Theme.of(context).textTheme.headlineLarge,
        textAlign: TextAlign.center,
      ),
      Text(
        subTitle,
        style: Theme.of(context).textTheme.displayMedium,
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
