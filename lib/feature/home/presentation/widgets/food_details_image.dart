
import 'package:chef_app/core/utils/themes/app_images.dart';
import 'package:flutter/material.dart';

class FoodDetailsImage extends StatelessWidget {
  const FoodDetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Image.asset(
        AppImages.imagesFoodDetails,
        fit: BoxFit.cover,
      ),
    );
  }
}
