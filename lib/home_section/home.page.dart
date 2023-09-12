import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.body.dart';

ThemeData mainTheme = ThemeData(
  primaryColor: const Color(0xFFF3707B),
  hintColor: const Color(0xFFEEEEEE),
  indicatorColor: Colors.white,
  textTheme: TextTheme(
    titleLarge: GoogleFonts.yesevaOne(
      fontSize: 40,
      color: Colors.black,
    ),
    labelMedium: GoogleFonts.josefinSans(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      decoration: TextDecoration.underline,
    ),
    displaySmall: GoogleFonts.comfortaa(
      color: const Color(0xFF7F7F7F),
      fontSize: 18,
    ),
  ),
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 25),
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
          backgroundColor: Colors.white10,
          elevation: 0,
          toolbarHeight: 70,
          actions: const [
            RotatedBox(
              quarterTurns: 3,
              child: Icon(
                Icons.signal_cellular_alt_2_bar,
                size: 30,
              ),
            ),
          ],
        ),
        body: const HomeBody(),
      ),
    );
  }
}