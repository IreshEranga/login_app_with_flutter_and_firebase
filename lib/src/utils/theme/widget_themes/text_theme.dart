import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: Colors.black54,
        fontSize: 24,
      ),
  displayMedium: GoogleFonts.poppins(
    color: Colors.black87,
    fontSize: 30.0,
    fontWeight: FontWeight.bold
  ));
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    headlineMedium: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24,
    ),
    displayMedium: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 30.0, fontWeight: FontWeight.bold
    )
  );
}
