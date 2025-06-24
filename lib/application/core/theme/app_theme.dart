import 'package:flutter/material.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';

class AppTheme {
  static ThemeData getTheme() {
   
        return _lightTheme;
    
  }
  
   static ThemeData get _lightTheme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyMedium: baseTestStyle,
         
        ),
      );
}