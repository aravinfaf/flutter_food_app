import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_food_app/constants/colors.dart';
import 'package:flutter_food_app/model/food.dart';
import 'package:flutter_food_app/screens/detail/widget/food_detail.dart';
import 'package:flutter_food_app/screens/detail/widget/food_image.dart';
import 'package:flutter_food_app/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  Food food;
  DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_outlined,
              Icons.favorite_border,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImage(food),
            FoodDetail(food),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 50,
        child: RawMaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: kPrimaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Text(
                  food.quantity.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
