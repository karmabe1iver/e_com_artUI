import 'package:flutter/material.dart';

class IconButtones extends StatelessWidget {
  const IconButtones({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              NetworkImage(
                  'https://img.icons8.com/external-flat-icons-inmotus-design/344/external-human-man-and-woman-flat-icons-inmotus-design.png'),
            ),
          ),
          Spacer(),
          IconButton(
            color: Colors.grey,
            onPressed: () {},
            icon: Icon(Icons.arrow_right),
            iconSize: 50,
          ),
        ],
      ),
    );
  }
}
