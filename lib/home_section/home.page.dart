import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'action.bar.dart';
import 'home.body.dart';

ThemeData mainTheme = ThemeData(
  primaryColor: const Color(0xFFF3707B),
  hintColor: const Color(0xFFEEEEEE),
  indicatorColor: Colors.white,
  cardColor: const Color(0xFFFCE2E5),
  shadowColor: Colors.black,
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
      displayMedium: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 18,
      ),
      displayLarge: GoogleFonts.urbanist(
        color: Colors.white,
        fontSize: 20,
      )),
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
            Padding(
              padding: EdgeInsets.only(
                right: 38,
                top: 20,
              ),
              child: TopBarAction(),
            ),
          ],
        ),
        body: const HomeBody(),
      ),
    );
  }
}
