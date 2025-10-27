import 'package:flutter/material.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();
  
  static final lightOutlinedButton=OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    )
  );
  static final darkOutlinedButton=OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
  elevation: 0,
  foregroundColor: Colors.white,
  side: const BorderSide(color: Colors.blue),
  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  )
  );
}