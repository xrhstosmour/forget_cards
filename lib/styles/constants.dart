import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final gradientBackgroundStyle = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF050a0f),
      Color(0xFF0a151f),
      Color(0xFF0f202e),
      Color(0xFF142b3e),
    ],
    stops: [0.1, 0.4, 0.6, 0.9],
  ),
);

final headerTitleStyle = GoogleFonts.openSans(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
);

final headerSubtitleStyle = GoogleFonts.openSans(
  textStyle: TextStyle(
    color: Colors.white70,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
);

final categoryTitleStyle = GoogleFonts.openSans(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
);

final categorySubtitleStyle = GoogleFonts.openSans(
  textStyle: TextStyle(
    color: Colors.white38,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
);

final categoryInfoStyle = GoogleFonts.openSans(
  textStyle: TextStyle(
    color: Colors.blue,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  ),
);
