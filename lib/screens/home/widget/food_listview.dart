import 'package:flutter/material.dart';
import 'package:flutter_food_app/model/restaurant.dart';
import 'package:flutter_food_app/screens/detail/detail_page.dart';
import 'package:flutter_food_app/screens/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  int selected;
  Function callback;
  Restaurant restaurant;
  PageController pageController;

  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
          controller: pageController,
          onPageChanged: (index) => callback(index),
          children: category
              .map((e) => ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailPage(
                                restaurant.menu[category[selected]]![index])));
                      },
                      child: FoodItem(
                          restaurant.menu[category[selected]]![index])),
                  separatorBuilder: (_, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: restaurant.menu[category[selected]]!.length))
              .toList()),
    );
  }
}
