import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'landing_page.dart';

void main() {
  runApp(const MainApp());
}

ThemeData mainTheme = ThemeData(
  primaryColor: const Color(0xFFF3707B),
  shadowColor: const Color(0xFF00061D),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.yesevaOne(
      fontSize: 40,
      color: Colors.white,
    ),
    labelMedium: GoogleFonts.josefinSans(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      decoration: TextDecoration.underline,
    ),
  ),
);

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}
