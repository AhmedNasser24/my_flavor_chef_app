
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:flutter/material.dart';

class FoodItemImage extends StatelessWidget {
  const FoodItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImages.imagesFood, fit: BoxFit.cover);
  }
}
