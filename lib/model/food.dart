class Food {
  String imgUrl;
  String description;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool ishighLight;

  Food(this.imgUrl, this.description, this.name, this.waitTime, this.score,
      this.cal, this.price, this.quantity, this.ingredients, this.about,
      {this.ishighLight = false});

  static List<Food> getRecommandedFood() {
    return [
      Food(
          'assets/images/dish1.png',
          'No.1 in Sales',
          'Soba soup',
          '50 min',
          4.8,
          '325 kcal',
          120,
          1,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'Simply put, Japanese noodel soup, with a combination of rich flavoured broth, one of a variety types '
              'of noodel and a selection of meats or vegetables, often topped with a boiled egg.'
              'It s something simplistic and complex, ubiquitous and artistic, personal and universal.',
          ishighLight: true),
      Food(
        'assets/images/dish2.png',
        'Low Fat',
        'Ratatoulie Pasta',
        '50 min',
        4.8,
        '325 kcal',
        170,
        0,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        'Simply put, Japanese noodel soup, with a combination of rich flavoured broth, one of a variety types '
            'of noodel and a selection of meats or vegetables, often topped with a boiled egg.'
            'It s something simplistic and complex, ubiquitous and artistic, personal and universal.',
      ),
      Food(
          'assets/images/dish3.png',
          'Highly Recommended',
          'Ratatoulie Pasta',
          '50 min',
          4.8,
          '325 kcal',
          170,
          0,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'Simply put, Japanese noodel soup, with a combination of rich flavoured broth, one of a variety types '
              'of noodel and a selection of meats or vegetables, often topped with a boiled egg.'
              'It s something simplistic and complex, ubiquitous and artistic, personal and universal.'),
      Food(
          'assets/images/dish1.png',
          'No.1 in Sales',
          'Soba soup',
          '50 min',
          4.8,
          '325 kcal',
          120,
          1,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'Simply put, Japanese noodel soup, with a combination of rich flavoured broth, one of a variety types '
              'of noodel and a selection of meats or vegetables, often topped with a boiled egg.'
              'It s something simplistic and complex, ubiquitous and artistic, personal and universal.',
          ishighLight: true),
      Food(
        'assets/images/dish2.png',
        'Low Fat',
        'Ratatoulie Pasta',
        '50 min',
        4.8,
        '325 kcal',
        170,
        0,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        'Simply put, Japanese noodel soup, with a combination of rich flavoured broth, one of a variety types '
            'of noodel and a selection of meats or vegetables, often topped with a boiled egg.'
            'It s something simplistic and complex, ubiquitous and artistic, personal and universal.',
      ),
    ];
  }

  static List<Food> getPopularFoods() {
    return [
      Food(
          'assets/images/dish4.png',
          'Most popular',
          'Tomato chicken',
          '50 min',
          325,
          '325 kcal',
          14.5,
          0,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'Simply put, Japanese noodel soup, with a combination of rich flavoured broth, one of a variety types '
              'of noodel and a selection of meats or vegetables, often topped with a boiled egg. '
              'Food preparation is a broad topic, involving all of the steps that occur between obtaining raw ingredients and consuming them as food.'
              ' It s something simplistic and complex, ubiquitous and artistic, personal and universal.')
    ];
  }
}
