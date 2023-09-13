import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 70,
        width: constraints.maxWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).hintColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search something...',
                    hintStyle:
                        Theme.of(context).textTheme.displaySmall!.copyWith(
                              fontSize: 13,
                            ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 60,
                height: constraints.maxHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.search,
                    size: 20,
                  ),
                  color: Theme.of(context).indicatorColor,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
