import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.food_app_data,
  });

  final List food_app_data;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    HighlightText(
                      title: food_app_data[2],
                      clr: Colors.orange[400],
                    ),
                    SizedBox(width: 10),
                    HighlightText(
                      title: food_app_data[4],
                      clr: Colors.indigoAccent[400],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  food_app_data[0],
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text('Cuisine: ${food_app_data[1]}'),
                Text('Primary Ingredient:  ${food_app_data[3]}'),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}

class HighlightText extends StatelessWidget {
  const HighlightText({
    super.key,
    required this.title,
    required this.clr,
  });

  final String title;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
