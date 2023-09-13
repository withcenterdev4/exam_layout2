import 'package:exam_layout2/home_section/text.buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon.buttons.dart';
import 'search.section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover \nworld with us!',
                  style: Theme.of(context).textTheme.titleLarge,
                  softWrap: true,
                ),
                const SizedBox(height: 50),
                const SearchSection(),
                const SizedBox(height: 50),
                const IconButtons(),
                const SizedBox(height: 50),
                const TextButtons(),
                const SizedBox(height: 30),
              ],
            ),
          ),
          const ImageCarousel(),
        ],
      );
    });
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          SizedBox(width: 40),
          ImageCard(),
          SizedBox(width: 25),
          ImageCard(),
          SizedBox(width: 25),
          ImageCard(),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // gradient: LinearGradient(colors: Theme.of(context).shadowColor,),
        image: const DecorationImage(
          image: AssetImage("assets/land_page.jpg"),
          fit: BoxFit.cover,
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
                  'Lempuyang Temple',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Theme.of(context).indicatorColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        letterSpacing: 0,
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
                      'Indonesia',
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
