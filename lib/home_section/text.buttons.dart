import 'package:flutter/material.dart';

class TextButtons extends StatefulWidget {
  const TextButtons({Key? key}) : super(key: key);

  @override
  State<TextButtons> createState() => _TextButtonsState();
}

class _TextButtonsState extends State<TextButtons> {
  int activeIndex = 0;

  void setActiveIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          child: Row(
            children: [
              _buildTextButton(context, 'New', 0),
              const Spacer(),
              _buildTextButton(context, 'Most viewed', 1),
              const Spacer(),
              _buildTextButton(context, 'Hot tours', 2),
              const Spacer(),
              _buildTextButton(context, 'All', 3),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTextButton(BuildContext context, String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          setActiveIndex(index);
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 30,
            child: Text(
              text,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: activeIndex == index
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).shadowColor,
                    fontSize: 15,
                  ),
            ),
          ),
          if (activeIndex == index)
            Positioned(
              bottom: 0,
              child: Icon(
                Icons.circle, // Change this to your desired icon
                color: Theme.of(context).primaryColor,
                size: 8,
              ),
            ),
        ],
      ),
    );
  }
}

// class TextButtonBuilder extends StatelessWidget {
//   const TextButtonBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }