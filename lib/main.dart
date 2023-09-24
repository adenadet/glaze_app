import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glaze_credit_app/ui/screens/splash_static.dart';
import 'package:glaze_credit_app/ui/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: SplashStaticScreen(),
    );
  }
}
