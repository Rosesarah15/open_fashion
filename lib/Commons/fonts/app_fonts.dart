import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle title = GoogleFonts.tenorSans(
      fontSize: 18, color: Colors.black, letterSpacing: 4);
  static TextStyle subTitle = GoogleFonts.tenorSans(fontSize: 16);
  static TextStyle smallSubtitle =
      GoogleFonts.tenorSans(fontSize: 14, color: Colors.black);
  static TextStyle bodyLarge = GoogleFonts.tenorSans(fontSize: 16);
  static TextStyle bodyMedium = GoogleFonts.tenorSans(fontSize: 14);
  static TextStyle bodySmall = GoogleFonts.tenorSans(fontSize: 12);
  static TextStyle landingText = GoogleFonts.bodoniModa(
    fontSize: 28,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );
}
