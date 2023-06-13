import 'package:data_filters/data_filters.dart';
import 'package:filterdemo/foodcard.dart';
import 'package:flutter/material.dart';

class FoodOptions extends StatefulWidget {
  const FoodOptions({super.key});

  @override
  State<FoodOptions> createState() => _FoodOptionsState();
}

class _FoodOptionsState extends State<FoodOptions> {
  List<int>? filterIndex;

  @override
  Widget build(BuildContext context) {
    List<List> data = [
      ['pizza', 'italian', 'vegetarian', 'tomato', 'main course'],
      ['burger', 'american', 'non-vegetarian', 'beef', 'main course'],
      ['sushi', 'japanese', 'vegetarian', 'rice', 'appetizer'],
      ['pasta', 'italian', 'vegetarian', 'cream', 'main course'],
      ['taco', 'mexican', 'non-vegetarian', 'chicken', 'main course'],
      ['samosa', 'indian', 'vegetarian', 'potato', 'snack'],
      ['sushi', 'japanese', 'non-vegetarian', 'fish', 'appetizer'],
      ['noodles', 'chinese', 'vegetarian', 'soy sauce', 'main course'],
      ['samosa', 'indian', 'vegetarian', 'vegetables', 'snack'],
      ['burrito', 'mexican', 'non-vegetarian', 'pork', 'main course'],
      ['croissant', 'french', 'vegetarian', 'butter', 'breakfast'],
      ['gyro', 'greek', 'non-vegetarian', 'lamb', 'main course'],
      ['pasta', 'italian', 'vegetarian', 'tomato', 'main course'],
      ['sushi', 'japanese', 'vegetarian', 'avocado', 'appetizer'],
      ['burger', 'american', 'non-vegetarian', 'beef', 'main course'],
      ['taco', 'mexican', 'vegetarian', 'beans', 'main course'],
      ['pad thai', 'thai', 'vegetarian', 'peanuts', 'main course'],
      ['croissant', 'french', 'vegetarian', 'chocolate', 'breakfast'],
      ['samosa', 'indian', 'vegetarian', 'spices', 'snack'],
      ['pasta', 'italian', 'non-vegetarian', 'seafood', 'main course']
    ];
    List<String> titles = [
      'Food',
      'Cuisine',
      'Vegetarian',
      'Primary Ingredient',
      'Food Type'
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Food App'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            DataFilters(
              data: data,

              /// pass your filter title here
              filterTitle: titles,

              /// enable animation
              showAnimation: true,

              /// get list of index of selected filter
              recent_selected_data_index: (List<int>? index) {
                setState(() {
                  filterIndex = index;
                });
              },

              /// styling
              style: FilterStyle(
                buttonColor: Colors.green,
                buttonColorText: Colors.white,
                filterBorderColor: Colors.grey,
              ),
            ),

            /// main body
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (ctx, i) {
                  if (filterIndex == null || filterIndex!.contains(i)) {
                    return FoodCard(food_app_data: data[i]);
                  }
                  return SizedBox();
                },
              ),
            ),
          ],
        ));
  }
}
