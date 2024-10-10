import 'package:flutter/material.dart';
import 'package:ostello/utils/b_navbar_items.dart';
import 'package:ostello/views/sections/appbar_section.dart';
import 'package:ostello/views/sections/classes_section.dart';
import 'package:ostello/views/sections/filter_section.dart';
import 'package:ostello/views/sections/search_section.dart';
import 'package:ostello/views/sections/short_feed_section.dart';
import 'package:ostello/views/sections/top_menu_section.dart';
import 'package:ostello/views/widgets/carousel.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const SafeArea(
        top: true,
        minimum: EdgeInsets.only(left: 12, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarSection(),
              SearchSection(),
              SizedBox(
                height: 20,
              ),
              // 3 Top most cards under the search Bar
              TopMenuSection(),
              SizedBox(
                height: 20,
              ),
              // Carousel
              CustomCarouselSlider(),
              SizedBox(
                height: 20,
              ),

              Text(
                "Recommended for you",
                style: TextStyle(fontSize: 17),
              ),
              // Short Videos Section
              ShortFeedSection(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Find the best Coach to help you with your 10th Class",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              //Filter Section
              FilterSection(),
              SizedBox(
                height: 20,
              ),
              // Course Classes Section Free and Paid
              ClassesSection(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.purple),
        items: bottomNavigationBarItems,
      ),
    );
  }
}
