import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants/colors.dart';
import 'package:flutter_food_app/model/restaurant.dart';
import 'package:flutter_food_app/screens/home/widget/food_list.dart';
import 'package:flutter_food_app/screens/home/widget/food_listview.dart';
import 'package:flutter_food_app/screens/home/widget/restaurant_widget.dart';
import 'package:flutter_food_app/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  var restaurant = Restaurant.getRestaurant();
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(Icons.arrow_back_outlined, Icons.search),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(selected);
          }, restaurant),
          Expanded(
            child: FoodListView(selected, (int index) {
              setState(() {
                selected = index;
              });
            }, pageController, restaurant),
          ),
          Container(
            padding: EdgeInsets.all(5),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.grey.withOpacity(0.5)),
                activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    borderRadius: BorderRadius.circular(9),
                    color: kPrimaryColor,
                    dotBorder:
                        DotBorder(color: kPrimaryColor, width: 2, padding: 2)),
              ),
              onDotClicked: (int index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
    );
  }
}
