import 'package:flutter/material.dart';

import 'search.section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.all(40),
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
          ],
        ),
      );
    });
  }
}
