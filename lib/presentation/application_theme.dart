import 'package:flutter/material.dart';
import 'package:vpn_test/gen/fonts.gen.dart';

class ApplicationTheme {
  static const secondaryColor = Color(0xFFE5E5EA);
  static const firstThemeColor = Color(0xFF075BD2);
  static const secondThemeColor = Color(0xFF62A3FF);

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontFamily: FontFamily.jost,
        fontSize: 17.0,
        letterSpacing: -0.4,
      ),
    ),
  );
}
