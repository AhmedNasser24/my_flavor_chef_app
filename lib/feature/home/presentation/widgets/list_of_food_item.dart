import 'package:chef_app/feature/home/presentation/widgets/food_item.dart';
import 'package:flutter/material.dart';

class ListOfFoodItem extends StatelessWidget {
  const ListOfFoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 230,
        mainAxisExtent: 230,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return FoodItem();
      },
    );
  }
}
