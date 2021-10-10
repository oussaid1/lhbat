import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MThemeData {
  MThemeData._();
  static const accentColor = Color(0xFFEAB93C);
  static const primaryColor = Color(0xFF1D1D21);
  static const secondaryColor = Color(0xFF2D1839);

  static const textColorB = Color(0xFF000000);
  static const textColorW = Color(0xFFFFFFFF);
  static const hintTextColor = Color(0xFF2B3B4B);
  static const accentVarient = Color(0xFFE3711D);

  static final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(88, 36),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 8),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ),
  );
  static final ButtonStyle raisedButtonStylenoColor = ElevatedButton.styleFrom(
    minimumSize: const Size(88, 36),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 8),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ),
  );

  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      //textTheme: _textStyle,
      // Matches manifest.json colors and background color.
      primaryColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        toolbarTextStyle: _textStyle,
        color: colorScheme.background,
        elevation: 8,
        iconTheme: IconThemeData(color: colorScheme.primary),
        // brightness: colorScheme.brightness,
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,

      focusColor: focusColor,
      cardColor: colorScheme.surface,
      cardTheme: CardTheme(
        color: colorScheme.surface,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textStyle,
      ),
      //cardTheme: CardTheme(color: colorScheme.primary),
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFEAB93C),
    primaryVariant: Color(0xFFE3711D),
    secondary: Color(0xFFE6EBEB),
    secondaryVariant: Color(0xFFFBFAFC),
    background: Color(0xFFE6EBEB),
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: _lightFillColor,
    onSurface: _lightFillColor,
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFEAB93C),
    primaryVariant: Color(0xFFE3711D),
    secondary: Color(0xFF2D1839),
    secondaryVariant: Color(0xFFF2E49B),
    background: Color(0xFF100E1F),
    surface: Color(0xFF161327),
    onBackground: Color(0xFFFFFFFF), // White with 0.05 opacity
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  static const TextStyle _textStyle = TextStyle(color: Colors.black);
}
