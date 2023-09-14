import 'package:exam_layout2/places_section/body.dart';
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
        fontSize: 30,
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
        fontSize: 15,
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
          leading: const CircleAvatar(
            foregroundImage: AssetImage("assets/profile1.jpeg"),
          ),
          backgroundColor: Theme.of(context).indicatorColor.withOpacity(0),
          elevation: 0,
          toolbarHeight: 50,
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 38,
                top: 20,
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainBody()),
                    );
                  },
                  child: const TopBarAction()),
            ),
          ],
        ),
        body: const HomeBody(),
      ),
    );
  }
}
