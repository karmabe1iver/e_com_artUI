import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> categories = [
    'Popular',
    'Recommanded',
    'New',
    'Oldest',
  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          itemBuilder: (context, index) => buildcategory(index),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
        ),
      ),
    );
  }

  Widget buildcategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  color: selectIndex == index ? Colors.black : Colors.grey,
                  fontWeight:
                      selectIndex == index ? FontWeight.bold : FontWeight.w400,
                  fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
