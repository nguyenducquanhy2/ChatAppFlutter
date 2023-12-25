import 'package:chat_app_flutter/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      colorSchemeSeed: const Color(0xff05A5A3),
      useMaterial3: true,
      textTheme: AppTextTheme.lightTextTheme,);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorSchemeSeed: const Color(0xFF038789),
      textTheme: AppTextTheme.darkTextTheme,);
}
