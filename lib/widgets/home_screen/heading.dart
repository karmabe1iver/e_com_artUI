import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "kelly Hoppen",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child: Text(
                  "Interior Designer",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 18.0,
            left: 8,
          ),
          child: ElevatedButton(
            child: const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 18,
            ),
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(18),
                primary: const Color.fromARGB(255, 133, 122, 236)),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
