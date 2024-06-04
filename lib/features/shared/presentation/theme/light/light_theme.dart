import 'package:flutter/material.dart';

part 'light_text_theme.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  textTheme: lightTextTheme,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF6F7BF7),
    surface: Color(0xFF9BF8F4),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(
        const Color(0xFF6F7BF7),
      ),
      textStyle: MaterialStateProperty.all(
        lightTextTheme.bodyMedium?.copyWith(
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  ),
);

// #9BF8F4
// #6F7BF7
