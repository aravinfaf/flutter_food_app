import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants/colors.dart';
import 'package:flutter_food_app/model/food.dart';

class FoodImage extends StatelessWidget {
  final Food food;

  FoodImage(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: kBackground,
                    ),
                  ))
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Image.asset(food.imgUrl),
              margin: EdgeInsets.all(15),
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: Offset(-1, 10),
                        blurRadius: 10)
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
