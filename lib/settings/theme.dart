import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      textTheme: _textTheme,
      // Matches manifest.json colors and background color.
      primaryColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        textTheme: _textTheme.apply(bodyColor: colorScheme.onPrimary),
        color: colorScheme.background,
        elevation: 8,
        iconTheme: IconThemeData(color: colorScheme.primary),
        brightness: colorScheme.brightness,
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
        contentTextStyle: _textTheme.subtitle1!.apply(color: _darkFillColor),
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

  static const _light = FontWeight.w300;
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.bold;

  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.robotoSlab(fontWeight: _bold, fontSize: 20.0),
    headline2: GoogleFonts.robotoSlab(fontWeight: _semiBold, fontSize: 18.0),
    headline3: GoogleFonts.robotoSlab(fontWeight: _regular, fontSize: 16.0),
    headline4: GoogleFonts.robotoSlab(
      fontWeight: _regular,
      fontSize: 16.0,
    ),
    subtitle1: GoogleFonts.robotoSlab(
      fontWeight: _regular,
      fontSize: 14.0,
    ),
    subtitle2: GoogleFonts.robotoSlab(
        fontWeight: _light, fontSize: 14.0, color: hintTextColor),

    /***************************** */
    caption: GoogleFonts.robotoSlab(fontWeight: _semiBold, fontSize: 16.0),
    headline5: GoogleFonts.robotoSlab(fontWeight: _medium, fontSize: 16.0),
    overline: GoogleFonts.robotoSlab(
        fontWeight: _light, fontSize: 12.0, color: hintTextColor),
    bodyText1: GoogleFonts.robotoSlab(fontWeight: _regular, fontSize: 14.0),
    bodyText2: GoogleFonts.robotoMono(
      fontWeight: _regular,
      fontSize: 16.0,
    ),
    headline6: GoogleFonts.robotoSlab(fontWeight: _bold, fontSize: 16.0),
    button: GoogleFonts.robotoSlab(fontWeight: _semiBold, fontSize: 14.0),
  );
}
