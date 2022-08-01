import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  const Response({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark),
                  color: Colors.grey,
                ),
                const Text(
                  "1863",
                  style: TextStyle(color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                  color: Colors.grey,
                ),
                const Text(
                  "863",
                  style: TextStyle(color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up),
                  color: Colors.grey,
                ),
                const Text(
                  "91",
                  style: TextStyle(color: Colors.grey),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  color: const Color.fromARGB(255, 170, 126, 234),
                ),
                const Text(
                  "465",
                  style: TextStyle(
                    color: Color.fromARGB(255, 170, 126, 234),
                  ),
                )
              ],
            ),
          ),
          const Text(
            'Awesome Story',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
