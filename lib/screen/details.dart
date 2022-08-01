import 'package:design/screen/home.dart';
import 'package:design/screen/workpage.dart';
import 'package:design/widgets/bottombar.dart';
import 'package:design/widgets/details_screen/overlapped_image.dart';
import 'package:design/widgets/details_screen/profile_detials.dart';
import 'package:design/widgets/details_screen/response.dart';
import 'package:design/widgets/details_screen/story.dart';
import 'package:design/widgets/details_screen/textfiled.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      child: const Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1615044010418-2ef6f75ab808?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                        fit: BoxFit.fill,
                        height: 590,
                        width: double.infinity,
                      ),
                    ),
                    PersonalDetials(),
                    Response(),
                  ],
                ),
                Story(),
                OverlappedImage(),
                Textfiled(),
              ],
            ),
          ),
        ));
  }
}
