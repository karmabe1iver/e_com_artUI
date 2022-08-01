import 'package:flutter/material.dart';

class OverlappedImage extends StatelessWidget {
  const OverlappedImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      padding: EdgeInsets.all(size.width * 0.05),
      child: Stack(
        children: [
          ...List.generate(
            imageC.length,
            (index) => Positioned(
              left: index * 25,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(imageC[index]),
              ),
            ),
          ),
          Positioned(
            left: imageC.length * 37.5,
            child: const SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  '521+',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> imageC = [
  'https://images.unsplash.com/photo-1628890920690-9e29d0019b9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
  'https://images.unsplash.com/photo-1628890920690-9e29d0019b9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
];
