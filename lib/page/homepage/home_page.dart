import 'package:app_travel/constant/color_style.dart';
import 'package:app_travel/model/populer_model.dart';
import 'package:app_travel/widgets/booking_widget.dart';
import 'package:app_travel/widgets/bottom_navigation.dart';
import 'package:app_travel/widgets/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Where do you want to go?",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.notifications_active_sharp,
                    size: 26,
                    color: Colors.grey[350],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.search_outlined,
                    color: Colors.grey[350],
                    size: 40,
                  ),
                  Container(
                    width: 200,
                    margin: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.grey[350],
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Destination",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: green1Color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.place_outlined,
                      color: whiteColor,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: green1Color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const CategoryList(),
            const SizedBox(height: 10),
            const booking_widget(),
            const SizedBox(height: 6),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 10),
              child: Text(
                'Popular Destination!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 225,
              child: ListView.builder(
                itemCount: populars.length,
                padding: EdgeInsets.only(left: 24),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: green1Color,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              populars[index].image,
                              height: 150,
                              width: 160,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            populars[index].name,
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w900,
                              color: whiteColor,
                            ),
                          ),
                          Text(
                            populars[index].country,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
