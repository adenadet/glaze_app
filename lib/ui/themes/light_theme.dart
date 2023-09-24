import 'package:flutter/material.dart';
import 'package:glaze_credit_app/ui/themes/widget_themes/elevated_button_theme.dart';
import 'package:glaze_credit_app/ui/themes/widget_themes/outlined_button_theme.dart';
import 'package:glaze_credit_app/ui/themes/widget_themes/text_field_theme.dart';
import 'package:glaze_credit_app/ui/themes/widget_themes/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    primarySwatch: const MaterialColor(0xFF90EE90, <int, Color>{
      50: Color(0x1A90EE90),
      100: Color(0x3390EE90),
      200: Color(0x4D90EE90),
      300: Color(0x6690EE90),
      400: Color(0x8090EE90),
      500: Color(0xFF90EE90),
      600: Color(0x9990EE90),
      700: Color(0xB390EE90),
      800: Color(0xCC90EE90),
      900: Color(0xE690EE90),
    }),
    outlinedButtonTheme: OutlinedButtonAppTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: ElevatedButtonAppTheme.darkElevatedButtonTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      extendedTextStyle: TextStyle(
        color: Colors.blue,
      ),
    ),
    inputDecorationTheme: TextFieldInputAppTheme.darkTextFieldInputTheme,
  );
  static ThemeData lightTheme = ThemeData(
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: OutlinedButtonAppTheme.lightOutlinedButtonTheme,
    primarySwatch: const MaterialColor(0xFF228B22, <int, Color>{
      50: Color(0x1A228B22),
      100: Color(0x33228B22),
      200: Color(0x4D228B22),
      300: Color(0x66228B22),
      400: Color(0x80228B22),
      500: Color(0xFF228B22),
      600: Color(0x99228B22),
      700: Color(0xB3228B22),
      800: Color(0xCC228B22),
      900: Color(0xE6228B22),
    }), //355E3B
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonAppTheme.lightElevatedButtonTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      extendedTextStyle: TextStyle(
        color: Colors.blue,
      ),
    ),
    inputDecorationTheme: TextFieldInputAppTheme.darkTextFieldInputTheme,
  );
}
