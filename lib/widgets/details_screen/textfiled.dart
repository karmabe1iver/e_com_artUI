import 'package:flutter/material.dart';

class Textfiled extends StatelessWidget {
  const Textfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none),
                    hintText: "Type somthing",
                    filled: true,
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 101, 94, 94)),
                    fillColor: Color.fromARGB(239, 204, 193, 193)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
                color: Colors.grey,
                iconSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
