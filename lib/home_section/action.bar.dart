import 'package:flutter/material.dart';

class TopBarAction extends StatelessWidget {
  const TopBarAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 40,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Icon(
              Icons.maximize_outlined,
              color: Theme.of(context).shadowColor,
              size: 40,
            ),
            Positioned(
              top: -18,
              left: 5,
              child: Icon(
                Icons.minimize_outlined,
                color: Theme.of(context).shadowColor,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
