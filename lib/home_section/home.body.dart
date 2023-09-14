import 'package:exam_layout2/home_section/image.carousel.dart';
import 'package:exam_layout2/home_section/text.buttons.dart';
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
            child: SizedBox(
              height: constraints.maxHeight / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Discover \nworld with us!',
                    style: Theme.of(context).textTheme.titleLarge,
                    softWrap: true,
                  ),
                  const SearchSection(),
                  const IconButtons(),
                  const TextButtons(),
                ],
              ),
            ),
          ),
          const ImageCarousel(),
        ],
      );
    });
  }
}
