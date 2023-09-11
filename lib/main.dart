import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

ThemeData mainTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(243, 112, 123, 0),
  ),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.yesevaOne(
      fontSize: 40,
      color: Colors.white,
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

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/land_page.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Enjoy every moment with us!',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: SizedBox(
                  width: 250,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary,
                      // .withGreen(200),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              ),
              Text(
                'Create an account',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
