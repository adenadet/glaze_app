import 'package:flutter/material.dart';
import 'package:glaze_credit_app/constants/colors.dart';

class OutlinedButtonAppTheme {
  OutlinedButtonAppTheme._();

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: appDarkSecondaryColor,
      side: const BorderSide(color: appDarkSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
    ),
  );

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: appSecondaryColor,
      side: const BorderSide(color: appSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
    ),
  );
}
