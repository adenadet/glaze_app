import 'package:flutter/material.dart';
import 'package:glaze_credit_app/constants/colors.dart';

class AppTextTheme {
  static TextTheme darkTextTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headlineMedium: TextStyle(),
    displayLarge: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 30,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Roboto-Medium',
      fontSize: 15,
      fontStyle: FontStyle.italic,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Roboto-Thin',
      fontSize: 12,
      color: appWhiteColor,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Roboto-Thin',
      fontSize: 8,
    ),
  );
  static TextTheme lightTextTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.green,
    ),
    headlineMedium: TextStyle(
      fontSize: 15,
      color: appBlackColor,
    ),
    displayLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 30,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Roboto-Medium',
      fontSize: 15,
      fontStyle: FontStyle.italic,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Roboto-Thin',
      fontSize: 12,
      color: appPrimaryColor,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 10,
    ),
  );
}
