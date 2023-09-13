import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/whh.dart';

class IconButtons extends StatefulWidget {
  const IconButtons({super.key});

  @override
  State<IconButtons> createState() => _IconButtonsState();
}

class _IconButtonsState extends State<IconButtons> {
  int activeIndex = 0;
  void setActiveIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildIconButtons(context, IcoFontIcons.airplane, 0, null),
        _buildIconButtons(context, null, 1, Whh.building),
        _buildIconButtons(context, CupertinoIcons.photo_camera_solid, 2, null),
        _buildIconButtons(context, CupertinoIcons.car, 3, null),
      ],
    );
  }

  Widget _buildIconButtons(
      BuildContext context, IconData? icon, int index, String? fontIcon) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: activeIndex == index
            ? Theme.of(context).primaryColor
            : Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () => setActiveIndex(index),
        icon: fontIcon == null
            ? Icon(
                icon,
                color: activeIndex == index
                    ? Theme.of(context).indicatorColor
                    : Theme.of(context).primaryColor,
              )
            : Iconify(
                fontIcon,
                color: activeIndex == index
                    ? Theme.of(context).indicatorColor
                    : Theme.of(context).primaryColor,
              ),
      ),
    );
  }
}
