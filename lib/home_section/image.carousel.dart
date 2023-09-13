import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          SizedBox(width: 40),
          ImageCard(
            assetPath: "assets/lempuyang.jpg",
            title: "Lempuyang Temple",
            location: "Indonesia",
          ),
          SizedBox(width: 25),
          ImageCard(
            assetPath: "assets/eiffel.jpg",
            title: "The Eiffel Tower",
            location: "Francek",
          ),
          SizedBox(width: 25),
          ImageCard(
            assetPath: "assets/land_page.jpg",
            title: "Lempuyang Temple",
            location: "Indonesia",
          ),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.assetPath,
    required this.title,
    required this.location,
  });
  final String assetPath;
  final String title;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // gradient: LinearGradient(colors: Theme.of(context).shadowColor,),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.fill,
        ),
      ),
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.black,
                Colors.black,
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              stops: [0, 0, 1, 1],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Theme.of(context).indicatorColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        letterSpacing: 0,
                        height: 1.2,
                      ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      CupertinoIcons.location_solid,
                      color: Theme.of(context).primaryColor,
                      size: 15,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      location,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
