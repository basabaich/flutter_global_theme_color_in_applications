//This is a global class for theme management

import 'package:flutter/material.dart';
import './theme_extension.dart';

class GlobalThemData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      extensions: <ThemeExtension<dynamic>>[
        CustomColors(
            custom: const Color.fromARGB(255, 255, 110, 64),
            onCustom: const Color.fromARGB(255, 206, 52, 5)),
      ],
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 240, 66, 112),
    onPrimary: Color.fromARGB(255, 110, 4, 4),
    secondary: Color.fromARGB(255, 233, 126, 64),
    onSecondary: Color.fromARGB(255, 119, 59, 2),
    error: Colors.redAccent,
    onError: Color.fromARGB(255, 189, 3, 3),
    background: Color.fromARGB(255, 255, 255, 255),
    onBackground: Color.fromARGB(255, 4, 117, 38),
    surface: Color.fromARGB(255, 194, 241, 85),
    onSurface: Color.fromARGB(255, 82, 116, 4),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFF8383),
    secondary: Color(0xFF4D1F7C),
    background: Color(0xFF241E30),
    surface: Color(0xFF1F1929),
    onBackground: Color(0xFFFFFFFF), // Full opacity white.
    // onBackground: Color(0x0DFFFFFF),
    error: Colors.redAccent,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    brightness: Brightness.dark,
  );
}
