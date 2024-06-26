import 'package:flutter/material.dart';

part 'dark_text_theme.dart';

const _primaryColor = Color(0xFF6F7BF7);
const _accentColor = Color(0xFF9BF8F4);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  textTheme: _darkTextTheme,
  colorScheme: const ColorScheme.dark(
    primary: _primaryColor,
    surface: _accentColor,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(
        _primaryColor,
      ),
      textStyle: MaterialStateProperty.all(
        _darkTextTheme.bodyMedium?.copyWith(
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        _darkTextTheme.headlineSmall,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: _primaryColor,
    contentTextStyle: _darkTextTheme.bodyMedium?.copyWith(
      color: Colors.white,
    ),
  ),
  scrollbarTheme: ScrollbarThemeData(
    thumbColor: MaterialStateProperty.all(_primaryColor),
    radius: const Radius.circular(10),
    thickness: MaterialStateProperty.all(4),
    crossAxisMargin: 7,
  ),
  searchBarTheme: SearchBarThemeData(
    backgroundColor: MaterialStateProperty.all(_primaryColor),
    padding: MaterialStateProperty.all(EdgeInsets.zero),
    textStyle: MaterialStateProperty.all(_darkTextTheme.bodyMedium),
    elevation: MaterialStateProperty.all(10),
  ),
);
