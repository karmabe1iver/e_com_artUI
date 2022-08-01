import 'package:design/screen/details.dart';
import 'package:design/screen/workpage.dart';
import 'package:design/widgets/bottombar.dart';
import 'package:design/widgets/home_screen/card.dart';
import 'package:design/widgets/home_screen/category.dart';
import 'package:design/widgets/home_screen/heading.dart';
import 'package:design/widgets/home_screen/icon_button.dart';
import 'package:design/widgets/home_screen/imagebox.dart';
import 'package:design/widgets/home_screen/profile.dart';
import 'package:flutter/material.dart'
    show
        BottomAppBar,
        BuildContext,
        Column,
        Icon,
        IconButton,
        Icons,
        MainAxisAlignment,
        MaterialPageRoute,
        Navigator,
        Row,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        StatelessWidget,
        Widget;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Heading(),
              const Category(),
              ImageBox(),
              const IconButtones(),
              const Profile(),
              const Crard(),
            ],
          ),
        ),
      ),
    );
  }
}
