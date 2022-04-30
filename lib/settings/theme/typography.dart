import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class MTypography {
// Simple
  static TextStyle headlineTextStyle = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 26,
          color: textPrimary,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w300));

  static TextStyle headlineSecondaryTextStyle = GoogleFonts.montserrat(
      textStyle: TextStyle(
          fontSize: 20, color: textPrimary, fontWeight: FontWeight.w300));

  static TextStyle subtitleTextStyle = GoogleFonts.openSans(
      textStyle:
          TextStyle(fontSize: 14, color: textSecondary, letterSpacing: 1));

  static TextStyle bodyTextStyle = GoogleFonts.openSans(
      textStyle: TextStyle(fontSize: 14, color: textPrimary));

  static TextStyle buttonTextStyle = GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 14, color: textPrimary, letterSpacing: 1));

// Advanced
  static Color textPrimary = const Color(0xFF111111);
  static Color textSecondary = const Color(0xFF3A3A3A);
  static Color primaryColor = const Color(0xFF2BB7FF);
  static Color secondaryColor = const Color(0xFFBDE6FB);
  static Color black = const Color(0x00000000);
  static Color white = const Color(0xFFffffff);
}
