import 'package:ecommerce_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/check_box.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

 class appTheme{
   appTheme._();
   static ThemeData lightTheme = ThemeData(
     useMaterial3: true,
     fontFamily: 'Poppins',
     brightness: Brightness.light,
     primaryColor: Colors.blue,
     scaffoldBackgroundColor: Colors.white,
     textTheme: TTextTheme.lightTextTheme,
     chipTheme: TChipTheme.lightChipTheme,
     appBarTheme: TAppBarTheme.lightAppBarTheme,
     checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
     bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
     outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButton,
     inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
     elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
   );
   static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
     fontFamily: 'Poppins',
     brightness: Brightness.dark,
     primaryColor: Colors.blue,
     scaffoldBackgroundColor: Colors.black,
     textTheme: TTextTheme.darkTextTheme,
     chipTheme: TChipTheme.darkChipTheme,
     appBarTheme: TAppBarTheme.darkAppBarTheme,
     checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
     bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
     outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButton,
     inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
     elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
   );
 }