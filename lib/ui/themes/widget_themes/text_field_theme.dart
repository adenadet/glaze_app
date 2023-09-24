import 'package:flutter/material.dart';
import 'package:glaze_credit_app/constants/colors.dart';

class TextFieldInputAppTheme {
  TextFieldInputAppTheme._();

  static const darkTextFieldInputTheme = InputDecorationTheme(
    fillColor: appPrimaryColor,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: appDarkPrimaryColor, width: 1),
    ),
    prefixIconColor: appDarkSecondaryColor,
    floatingLabelStyle: TextStyle(color: appDarkSecondaryColor),
    labelStyle: TextStyle(color: appDarkSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: appDarkSecondaryColor),
    ),
  );

  static const lightTextFieldInputTheme = InputDecorationTheme(
    fillColor: appAccentColor,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: appPrimaryColor),
    ),
    prefixIconColor: appSecondaryColor,
    labelStyle: TextStyle(
      color: appSecondaryColor,
    ),
    floatingLabelStyle: TextStyle(color: appSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: appSecondaryColor),
    ),
  );
}
