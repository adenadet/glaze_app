import 'package:flutter/material.dart';
import 'package:glaze_credit_app/constants/colors.dart';

class ElevatedButtonAppTheme {
  ElevatedButtonAppTheme._();

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: const RoundedRectangleBorder(),
          foregroundColor: appBlackColor,
          backgroundColor: appDarkPrimaryColor,
          side: const BorderSide(color: appDarkPrimaryColor),
          padding: const EdgeInsets.symmetric(vertical: 10.0)));

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: const RoundedRectangleBorder(),
          foregroundColor: appWhiteColor,
          backgroundColor: appPrimaryColor,
          side: const BorderSide(color: appPrimaryColor),
          padding: const EdgeInsets.symmetric(vertical: 10.0)));
}
