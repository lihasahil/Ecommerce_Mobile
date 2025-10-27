import 'package:ecommerce_app/features/authentication/view/OnBoarding/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: appTheme.lightTheme,
      darkTheme: appTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}