import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      primaryColor: Colors.black,
      scaffoldBackgroundColor: const Color(0xffd9d9d9),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.black,
        onPrimary: Colors.white,
        secondary: const Color(0xffd9d9d9),
        onSecondary: Colors.black,
        error: Colors.red.shade800,
        onError: Colors.white,
        surface: const Color(0xfff8f8f8),
        onSurface: Colors.black,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ));
}
