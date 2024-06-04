import 'package:flutter/material.dart';

extension CustomColorScheme on ColorScheme {
  Color get colorDisable => brightness == Brightness.dark
      ? const Color(0xFFC4C4C4)
      : const Color(0xFFC4C4C4);

  Color get colorText => brightness == Brightness.dark
      ? const Color(0xFFFFFFFF)
      : const Color(0xFF2F4F4F);
}
