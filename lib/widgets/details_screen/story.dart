import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20,
        top: 10,
        right: 45,
      ),
      child: Text(
        'once I was drawing a perfect chair for myself in my head .But I could not finish her design and so i found her !',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        maxLines: 3,
      ),
    );
  }
}
