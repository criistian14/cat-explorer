import 'package:flutter/material.dart';

extension CustomColorScheme on ColorScheme {
  Color get oppositeColor => brightness == Brightness.dark
      ? const Color(0xFFFFFFFF)
      : const Color(0xFF000000);
}
