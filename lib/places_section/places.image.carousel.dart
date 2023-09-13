import 'package:flutter/material.dart';

class PlacesCarousel extends StatelessWidget {
  const PlacesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildStackImage(
              context, 'Lipa Noi Beach', "assets/land_page.jpg", '4,5'),
          const SizedBox(width: 20),
          _buildStackImage(context, 'Eiffel Tower', "assets/eiffel.jpg", '4,5'),
          const SizedBox(width: 20),
          _buildStackImage(
              context, 'Lempuyang Temple', "assets/lempuyang.jpg", '4,5'),
        ],
      ),
    );
  }

  Widget _buildStackImage(
      BuildContext context, String title, String assetPath, String rating) {
    return SizedBox(
      height: 220,
      width: 250,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).indicatorColor,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).shadowColor.withOpacity(.1),
                    spreadRadius: .5,
                    blurRadius: 8,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 160,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(assetPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Theme.of(context).shadowColor,
                          fontSize: 17,
                        ),
                  ),
                  const Spacer(),
                  Text(
                    rating,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 15,
                        ),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).primaryColor,
                    size: 15,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
