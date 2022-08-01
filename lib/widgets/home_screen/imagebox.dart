import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  List<String> screens = [
    "https://images.unsplash.com/photo-1506471229209-05644666c5f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&w=1000&q=80",
    'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/tall-coconut-palm-trees-spring-break-akurtz.jpg',
    'https://p1.pxfuel.com/preview/406/455/609/sunset-tropical-sea-beach.jpg',
  ];

  ImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            height: 350,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: screens.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(screens[index]),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
