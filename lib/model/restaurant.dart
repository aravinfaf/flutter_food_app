import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String description;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.description, this.score, this.menu);

  static Restaurant getRestaurant() {
    return Restaurant('Restaurant', '20-30 min', '2.4km', 'Restaurant',
        'assets/images/res_logo.png', 'Orange sandwich is delicious', 4.7, {
      'Recommended': Food.getRecommandedFood(),
      'Popular': Food.getPopularFoods(),
      'Noodle': [],
      'Pizza': []
    });
  }
}
