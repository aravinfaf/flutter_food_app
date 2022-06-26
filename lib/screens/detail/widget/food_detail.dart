import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants/colors.dart';
import 'package:flutter_food_app/model/food.dart';
import 'package:flutter_food_app/screens/detail/widget/food_quantity.dart';

class FoodDetail extends StatelessWidget {
  Food food;
  FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackground,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _iconText(Icons.access_time_outlined, Colors.blue, food.waitTime),
              _iconText(
                  Icons.star_outline, Colors.amber, food.score.toString()),
              _iconText(Icons.local_fire_department, Colors.red, food.cal),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          FoodQuantity(food),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Ingredients',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            food.ingredients[index].values.first,
                            width: 52,
                          ),
                          Text(food.ingredients[index].keys.first)
                        ],
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: food.ingredients.length),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            food.about,
            style:
                TextStyle(fontSize: 14, wordSpacing: 1.2, letterSpacing: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _iconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
