import 'package:exam_layout2/home_section/action.bar.dart';
import 'package:exam_layout2/places_section/places.image.carousel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
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
            titleSmall: GoogleFonts.titilliumWeb(),
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
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Theme.of(context).shadowColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Theme.of(context).indicatorColor.withOpacity(0),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 38,
                top: 20,
              ),
              child: InkWell(
                onTap: () {},
                child: const TopBarAction(),
              ),
            ),
          ],
        ),
        body: const PlacesImages(),
      ),
    );
  }
}

class PlacesImages extends StatelessWidget {
  const PlacesImages({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: HeaderTitle(),
          ),
          SizedBox(height: 20),
          PlacesCarousel(),
          Column(
            children: [],
          ),
        ],
      );
    });
  }
}

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Koh Samui, Thailand',
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).shadowColor,
            decoration: TextDecoration.none,
            letterSpacing: -1,
          ),
    );
  }
}
